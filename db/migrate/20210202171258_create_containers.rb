class CreateContainers < ActiveRecord::Migration[6.1]
  def change
    create_table :containers do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
