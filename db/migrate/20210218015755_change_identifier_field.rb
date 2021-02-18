class ChangeIdentifierField < ActiveRecord::Migration[6.1]
  def change
    rename_column :identifiers, :identifier, :title 
  end
end
