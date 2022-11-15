class CreateBugs < ActiveRecord::Migration[5.0]
  def change
    create_table :bugs do |t|
      t.text :description
      t.string :title
      t.date :deadline
      t.text :screenshot
      t.string :bugType
      t.references :creator_id, foreign_key: true
      t.references :developer_id, foreign_key: true
      t.references :project_id, foreign_key: true

      t.timestamps
    end
  end
end
