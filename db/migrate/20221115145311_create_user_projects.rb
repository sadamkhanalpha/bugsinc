class CreateUserProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :user_projects do |t|
      t.belongs_to :user
      t.belongs_to :project

      t.timestamps
    end
  end
end
