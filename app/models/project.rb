class Project < ApplicationRecord
  belongs_to :user
  has_many :tasks
  has_many :comments, :as => :commentable
end
