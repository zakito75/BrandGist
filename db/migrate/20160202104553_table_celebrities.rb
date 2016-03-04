class TableCelebrities < ActiveRecord::Migration
  def change
    create_table :celebrities
    add_column :celebrities, :name, :string
    add_column :celebrities, :description, :text
    add_column :celebrities, :source, :string
  end
end
