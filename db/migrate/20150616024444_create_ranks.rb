class CreateRanks < ActiveRecord::Migration
  def change
    create_table :ranks do |t|
      t.string :name, null: false
      t.integer :value, null: false

      t.timestamps null: false
    end
    add_index :ranks, :name, unique: true
    add_index :ranks, :value, unique: true
  end
end
