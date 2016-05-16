class Event < ActiveRecord::Base
  belongs_to :user
  has_many :hashtag_events

  validates :name, presence: true, uniqueness: {scope: [:start_date, 
:end_date]}, length: {maximum: 32}
  validates :start_date, presence: true
  validates :end_date, presence: true, numericality: { greater_than 
self.start_date }
  validates :renew_period, presence: true
  validates :user_id, presence: true 
end
