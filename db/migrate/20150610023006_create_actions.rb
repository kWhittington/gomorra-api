class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.integer :cost, null: false
      t.string :name, null: false
      t.string :text, null: false

      t.belongs_to :playing_card, index: true, null: false

      t.timestamps null: false
    end
  end
end
