class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.integer :status
      t.integer :company_number
      t.string :position
      t.text :whoiam

      t.timestamps
    end
  end
end
