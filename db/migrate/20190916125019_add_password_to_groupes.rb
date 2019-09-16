class AddPasswordToGroupes < ActiveRecord::Migration[6.0]
  def change
    add_column :groupes, :encrypted_password, :string, default: ""
  end
end
