class Comment < ActiveRecord::Base
  attr_accessible :cab_id, :check_in_id, :comment, :user_id

  belongs_to :user
  belongs_to :check_in
  belongs_to :cab
end
