class AddCategoryIdToIdentifiers < ActiveRecord::Migration[6.1]
  def change
    add_reference :identifiers, :category, null: false, foreign_key: true
  end
end
