class CreateGroupes < ActiveRecord::Migration[6.0]
  def change
    create_table :groupes do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.string :password_digest

      t.timestamps
    end
  end
end
