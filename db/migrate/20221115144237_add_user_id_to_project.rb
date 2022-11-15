class AddUserIdToProject < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :manager_id, :integer
  end
end
