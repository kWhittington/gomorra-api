class CreatePlayingCards < ActiveRecord::Migration
  def change
    create_table :playing_cards do |t|
      t.belongs_to :rank, index: true
      t.belongs_to :suit, index: true

      t.timestamps null: false
    end

    add_index :playing_cards, [:rank_id, :suit_id], unique: true
  end
end
