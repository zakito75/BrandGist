class TableProducts < ActiveRecord::Migration
  def change
    create_table :products
    add_column :products, :name, :string
    add_column :products, :description, :text
    add_column :products, :price, :string
    add_column :products, :version, :string
    
  end
end
