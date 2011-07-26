class CreateDishes < ActiveRecord::Migration
  def self.up
    create_table :dishes do |t|
      t.string :name
      t.float :price
      t.text :description
      t.string :note
      t.references :local

      t.timestamps
    end
  end

  def self.down
    drop_table :dishes
  end
end
