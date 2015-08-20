class AddKeywordsToSpells < ActiveRecord::Migration
  def change
    add_column :spells, :keywords, :string
  end
end
