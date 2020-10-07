class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t| 
      t.string  :name,                   null: false
      t.text    :description,            null: false
      t.integer :member_id,              null: false
      t.integer :transportation_id,      null: false
      t.integer :satisfaction_level_id,  null: false
      t.integer :prefecture_id,          null: false

      t.timestamps
    end
  end
end
