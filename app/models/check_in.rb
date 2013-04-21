class CheckIn < ActiveRecord::Base
  attr_accessible :check_in_id, :user_id, :cab_id, :created_at

  belongs_to :user
  belongs_to :cab

  has_many :comments
  
  validates :user_id, presence: true
  validates :cab_id, presence: true

  # after_save :update_cab_id

  # private

  # def update_check_id

  # end
end
