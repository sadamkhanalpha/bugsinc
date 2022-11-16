class Project < ApplicationRecord
  has_many :user_projects
  has_many :users, through: :user_projects
  has_one :manager, :class_name => "User", :foreign_key => "manager_id"
  has_many :bugs, inverse_of: 'project'
end
