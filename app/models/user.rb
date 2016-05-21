class User < ActiveRecord::Base
  has_many :events
  
  before_save {save.username = username.downcase}

  ROLES = {0=>"модератор", 1=>"администратор"}
  validates :role, presence: true, inclusion: {in: ROLES.keys}
  validates :username, presence: true, length: {maximum: 32}, 
uniqueness: {case_sensitive: false}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, 
length: {maximum: 40}, uniqueness: {scope: :username}
  validates :last_name, presence: true, length: {maximum: 32}
  validates :first_name, presence: true, length: {maximum: 32}
  validates :second_name, length: {maximum: 32}
  
  validates :password, length: {minimum: 6}
  

  has_secure_password
end
