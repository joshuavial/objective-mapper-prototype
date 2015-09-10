class CreatePods < ActiveRecord::Migration
  def change
    create_table :pods do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
