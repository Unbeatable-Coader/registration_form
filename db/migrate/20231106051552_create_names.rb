class CreateNames < ActiveRecord::Migration[7.1]
  def change
    create_table :names do |t|
      t.string :email
      t.string :city
      t.string :country
      t.string :pincode

      t.timestamps
    end
  end
end
