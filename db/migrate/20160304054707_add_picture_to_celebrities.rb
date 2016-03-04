class AddPictureToCelebrities < ActiveRecord::Migration
  def change
    add_attachment :celebrities, :picture
  end
end
