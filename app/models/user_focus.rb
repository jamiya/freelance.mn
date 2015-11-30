class UserFocus < ActiveRecord::Base
  belongs_to :user
  belongs_to :focus
end
