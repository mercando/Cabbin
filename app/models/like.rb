class Like < ActiveRecord::Base
  attr_accessible :check_in_id, :user_id

  belongs_to :user, :check_in
end
