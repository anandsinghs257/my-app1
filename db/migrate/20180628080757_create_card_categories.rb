class CreateCardCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :card_categories do |t|

      t.timestamps
    end
  end
end
