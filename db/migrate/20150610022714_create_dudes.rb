class CreateDudes < ActiveRecord::Migration
  def change
    create_table :dudes do |t|
      t.string :bullet_type
      t.integer :bullets
      t.integer :control
      t.integer :influence
      t.integer :upkeep

      t.timestamps null: false
    end
  end
end
