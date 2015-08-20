class AddKeywordsToActions < ActiveRecord::Migration
  def change
    add_column :actions, :keywords, :string
  end
end
