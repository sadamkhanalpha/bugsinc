class Project < ApplicationRecord
  has_one :user, :class_name => "User", :foreign_key => "manager_id"
  has_many :bug
  belongs_to :bug
end
