class AddKeywordsToDeeds < ActiveRecord::Migration
  def change
    add_column :deeds, :keywords, :string
  end
end
