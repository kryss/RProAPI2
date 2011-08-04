class AddConsumptionToCustomer < ActiveRecord::Migration
  def self.up
    add_column :customers, :consumption, :integer, :default => 0
    Customer.update_all ["consumption = 0"]
  end
  
  def self.down
    remove_column :customers, :consumption
  end
end
