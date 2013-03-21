class CheckIn < ActiveRecord::Base
  attr_accessible :story, :user_id, :cab_id

  belongs_to :user
  belongs_to :cabs
end
