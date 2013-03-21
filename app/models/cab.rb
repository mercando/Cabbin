class Cab < ActiveRecord::Base
  attr_accessible :medallion_number

  has_many :check_ins
end
