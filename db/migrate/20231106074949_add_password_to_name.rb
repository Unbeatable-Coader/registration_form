class AddPasswordToName < ActiveRecord::Migration[7.1]
  def change
    add_column :names, :password, :string
  end
end
