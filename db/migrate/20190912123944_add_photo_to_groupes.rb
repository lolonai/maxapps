class AddPhotoToGroupes < ActiveRecord::Migration[6.0]
  def change
    add_column :groupes, :photo, :string
  end
end
