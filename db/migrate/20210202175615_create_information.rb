class CreateInformation < ActiveRecord::Migration[6.1]
  def change
    create_table :information do |t|
      t.string :infoTitle
      t.text :info

      t.timestamps
    end
  end
end
