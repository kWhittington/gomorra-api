class AddKeywordsToGoods < ActiveRecord::Migration
  def change
    add_column :goods, :keywords, :string
  end
end
