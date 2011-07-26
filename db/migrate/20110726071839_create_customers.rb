class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :name
      t.string :company
      t.string :phone
      t.string :mobile_phone
      t.string :email
      t.text :address
      t.string :note
      t.references :local

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
