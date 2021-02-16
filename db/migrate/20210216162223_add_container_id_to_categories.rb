class AddContainerIdToCategories < ActiveRecord::Migration[6.1]
  def change
    add_reference :categories, :container, null: false, foreign_key: true
  end
end
