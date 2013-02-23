class AddAttrsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :middle_initial, :string
    add_column :users, :email, :string
    add_column :users, :picture, :string
    add_column :users, :gender, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :city, :string
    add_column :users, :state, :string
  end
end
