class CreateDeeds < ActiveRecord::Migration
  def change
    create_table :deeds do |t|
      t.string :name
      t.integer :cost
      t.integer :production
      t.integer :control
      t.string :keywords
      t.string :text

      t.timestamps null: false
    end
  end
end
