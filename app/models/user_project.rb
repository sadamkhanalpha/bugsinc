class UserProject < ApplicationRecord
  has_many :user_projects
  has_many :UserProject, through: :user_projects
  belongs_to :project
end
