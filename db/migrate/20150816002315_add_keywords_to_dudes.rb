class AddKeywordsToDudes < ActiveRecord::Migration
  def change
    add_column :dudes, :keywords, :string
  end
end
