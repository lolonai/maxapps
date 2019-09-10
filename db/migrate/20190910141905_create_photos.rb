class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.references :user, null: false, foreign_key: true
      t.references :groupe, null: false, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
