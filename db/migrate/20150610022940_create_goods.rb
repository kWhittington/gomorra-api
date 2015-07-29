class CreateGoods < ActiveRecord::Migration
  def change
    create_table :goods do |t|
      t.integer :cost
      t.string :name
      t.string :bullet_type
      t.integer :bullet_quantity
      t.integer :influence

      t.timestamps null: false
    end
  end
end
