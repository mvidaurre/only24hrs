class AddAdditonalFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :twitter, :string
    add_column :users, :facebook, :string
  end
end
