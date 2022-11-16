class Bug < ApplicationRecord
  belongs_to :creator, :class_name => "User", :foreign_key => "creator_id"
  belongs_to :developer, :class_name => "User", :foreign_key => "developer_id"
  belongs_to :project, :class_name => "Project", :foreign_key => "project_id"
end
