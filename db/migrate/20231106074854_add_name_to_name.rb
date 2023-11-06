class AddNameToName < ActiveRecord::Migration[7.1]
  def change
    add_column :names, :name, :string
  end
end
