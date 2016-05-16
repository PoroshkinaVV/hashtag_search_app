class HashtagEvent < ActiveRecord::Base
  belongs_to :hashtag
  belongs_to :event

  validates :hashtag_id, presence: true, uniqueness: {scope: :event_id}
  validates :event_id, presence: true  
end
