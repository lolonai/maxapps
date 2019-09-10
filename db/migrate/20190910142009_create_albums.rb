class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.references :groupe, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
