class AddUppToUserPhotos < ActiveRecord::Migration
  def change
    add_column :user_photos, :upp, :string
  end
end
