class Bug < ApplicationRecord
  belongs_to :creator_id
  belongs_to :developer_id
  belongs_to :project_id
end
