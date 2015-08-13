class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.string :name
      t.integer :production
      t.string :text
      t.integer :treasury

      t.belongs_to :playing_card, index: true
      t.belongs_to :gang, index: true

      t.timestamps null: false
    end
  end
end
