class AddDescriptionToPhotos < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :description, :text
  end
end
