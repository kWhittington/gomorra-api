class CreateDudes < ActiveRecord::Migration
  def change
    create_table :dudes do |t|
      t.string :bullet_type
      t.integer :bullets
      t.string :cost
      t.integer :influence
      t.string :name
      t.string :text
      t.integer :upkeep

      t.belongs_to :gang, index: true
      t.belongs_to :playing_card, index: true

      t.timestamps null: false
    end
  end
end
