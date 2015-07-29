class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.string :name
      t.string :text
      t.integer :cost

      t.timestamps null: false
    end
  end
end
