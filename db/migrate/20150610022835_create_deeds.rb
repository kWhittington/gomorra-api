class CreateDeeds < ActiveRecord::Migration
  def change
    create_table :deeds do |t|
      t.integer :control
      t.integer :cost
      t.string :name
      t.integer :production
      t.string :text

      t.belongs_to :playing_card

      t.timestamps null: false
    end
  end
end
