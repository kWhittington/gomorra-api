# Create the `gangs` table.
class CreateGangs < ActiveRecord::Migration
  def change
    create_table :gangs do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
    add_index :gangs, :name, unique: true
  end
end
