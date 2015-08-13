class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.integer :cost
      t.string :name
      t.string :text

      t.belongs_to :playing_card, index: true

      t.timestamps null: false
    end
  end
end
