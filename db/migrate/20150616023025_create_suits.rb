class CreateSuits < ActiveRecord::Migration
  def change
    create_table :suits do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
    add_index :suits, :name, unique: true
  end
end
