class Todo < ActiveRecord::Base
  belongs_to :todo_group
  belongs_to :owner, :class_name => 'User'
  belongs_to :assignee, :class_name => 'User'
end
