class CreateCalendriers < ActiveRecord::Migration[6.0]
  def change
    create_table :calendriers do |t|
      t.references :groupe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
