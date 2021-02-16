class AddIdentifierIdToInformation < ActiveRecord::Migration[6.1]
  def change
    add_reference :information, :identifier, null: false, foreign_key: true
  end
end
