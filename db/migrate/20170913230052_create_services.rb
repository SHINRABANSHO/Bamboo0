class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :name
      t.integer :company_id
      t.integer :status
      t.text :images
      t.string :catch_copy
      t.text :discription
      t.text :strong_point
      t.integer :rv_whole
      t.integer :rv_cost
      t.integer :rv_support
      t.integer :rv_maintenability
      t.integer :tv_experience
      t.integer :rv_simplisity

      t.timestamps
    end
  end
end
