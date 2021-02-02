class AddEmailAndDobToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :email, :string
    add_column :users, :dob, :date
  end
end
