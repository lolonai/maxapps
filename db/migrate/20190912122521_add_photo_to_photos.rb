class AddPhotoToPhotos < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :photo, :string
  end
end
