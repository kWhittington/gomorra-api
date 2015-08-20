class CreateGoods < ActiveRecord::Migration
  def change
    create_table :goods do |t|
      t.string :bullet_type
      t.integer :bullet_bonus
      t.integer :control
      t.integer :cost
      t.integer :influence
      t.string :name
      t.string :text

      t.belongs_to :playing_card

      t.timestamps null: false
    end
  end
end
