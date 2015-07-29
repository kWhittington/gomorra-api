class CreateDudes < ActiveRecord::Migration
  def change
    create_table :dudes do |t|
      t.string :name
      t.string :bullet_type
      t.integer :bullet_quantity
      t.integer :influence
      t.integer :control
      t.integer :upkeep
      t.integer :cost
      t.string :keywords
      t.string :text

      t.timestamps null: false
    end
  end
end
