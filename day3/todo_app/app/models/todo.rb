class Todo < ActiveRecord::Base
  validates_presence_of :task
  attr_accessible :due, :task, :memo, :user_id

  belongs_to :user
end