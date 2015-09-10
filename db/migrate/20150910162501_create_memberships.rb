class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :member_id
      t.string :member_type
      t.integer :joinable_id
      t.string :joinable_type

      t.timestamps null: false
    end
  end
end
