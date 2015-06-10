class CreatePlayingCards < ActiveRecord::Migration
  def change
    create_table :playing_cards do |t|
      t.string :suit
      t.string :rank
      t.integer :value

      t.timestamps null: false
    end
  end
end
