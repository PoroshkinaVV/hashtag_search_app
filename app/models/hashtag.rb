class Hashtag < ActiveRecord::Base
  has_many :hashtag_events

  validates :name, presence: true, uniqueness: true  

end
