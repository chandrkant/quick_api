class Task < ApplicationRecord
  belongs_to :project
  belongs_to :user
  belongs_to :assign, class_name: "User", foreign_key: 'user_id'
  has_many :comments, :as => :commentable
  has_many :user_tasks
  has_many :users, through: :user_tasks
end
