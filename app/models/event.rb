class Event < ActiveRecord::Base
  belongs_to :user
  has_many :hashtag_events

  validates :name, presence: true, uniqueness: {scope: [:start_at, 
:end_at]}, length: {maximum: 32}
  validates :start_at, presence: true
  validates :end_at, presence: true
  validates :renew_period, presence: true, numericality: {only_integer: 
true, greater_than: 0}
  validates :user_id, presence: true 
end
