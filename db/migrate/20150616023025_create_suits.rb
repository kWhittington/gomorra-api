class CreateSuits < ActiveRecord::Migration
  def change
    create_table :suits do |t|
      t.string :name, index: true, null: false, unique: true

      t.timestamps null: false
    end
  end
end
