class CreateBullets < ActiveRecord::Migration
  def change
    create_table :bullets do |t|
      t.string :cartridge, null: false
      t.string :quantity, null: false

      t.timestamps null: false
    end

    add_index :bullets, [:cartridge, :quantity], unique: true
  end
end
