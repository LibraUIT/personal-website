class AddSomeFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_type, :integer
    add_column :users, :username, :string
    add_column :users, :fullname, :string
    add_column :users, :status, :boolean, default: false
  end
end
