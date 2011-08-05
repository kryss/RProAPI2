class AddBirthdayToCustomers < ActiveRecord::Migration
  def self.up
    add_column :customers, :birthday, :date
  end

  def self.down
    remove_column :customers, :birthday
  end
end
