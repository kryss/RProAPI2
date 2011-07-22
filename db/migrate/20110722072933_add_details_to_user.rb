class AddDetailsToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :username, :string
    add_column :users, :phone, :string
  end

  def self.down
    remove_column :users, :phone
    remove_column :users, :username
  end
end
