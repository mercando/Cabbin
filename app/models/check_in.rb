class CheckIn < ActiveRecord::Base
  attr_accessible :story, :user_id, :cab_id

  belongs_to :user
  belongs_to :cab

	validates :story, presence: true
  validates :user_id, presence: true
  validates :cab_id, presence: true
end
