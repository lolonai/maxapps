class CreateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :collections do |t|
      t.references :photo, null: false, foreign_key: true
      t.references :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
