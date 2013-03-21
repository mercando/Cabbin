class CheckIn < ActiveRecord::Base
  attr_accessible :story

  belongs_to :user, :cabs
end
