class CheckIn < ActiveRecord::Base
  attr_accessible :story, :user_id, :cab_id, :created_at

  belongs_to :user
  belongs_to :cab

  validates :user_id, presence: true
  validates :cab_id, presence: true
end
