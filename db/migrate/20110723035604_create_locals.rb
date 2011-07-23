class CreateLocals < ActiveRecord::Migration
  def self.up
    create_table :locals do |t|
      t.string :name
      t.text :address
      t.string :phone
      t.string :fax
      t.text :description
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :locals
  end
end
