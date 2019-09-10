class CreateMessageries < ActiveRecord::Migration[6.0]
  def change
    create_table :messageries do |t|
      t.references :groupe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
