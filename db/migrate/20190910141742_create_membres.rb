class CreateMembres < ActiveRecord::Migration[6.0]
  def change
    create_table :membres do |t|
      t.references :groupe, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
