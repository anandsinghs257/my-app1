class AddNameToCardCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :card_categories, :name, :string
  end
end
