class CreateObjectives < ActiveRecord::Migration
  def change
    create_table :objectives do |t|
      t.string :title
      t.text :description
      t.date :date
      t.integer :agent_id
      t.string :agent_type

      t.timestamps null: false
    end
  end
end
