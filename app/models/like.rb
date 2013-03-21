class Like < ActiveRecord::Base
  attr_accessible :check_in_id, :user_id

  belongs_to :user
  belongs_to :check_in
end
