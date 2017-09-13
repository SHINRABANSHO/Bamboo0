class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :owner_id
      t.integer :company_number
      t.integer :status
      t.text :ourgoal
      t.text :whatwedo

      t.timestamps
    end
  end
end
