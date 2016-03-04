class AddCategoryIdToCelebrities < ActiveRecord::Migration
  def change
    add_column :celebrities, :category_id, :integer
    add_index :celebrities, :category_id
  end
end
