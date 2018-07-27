class CreateLenders < ActiveRecord::Migration[5.1]
  def change
    create_table :lenders do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone
      t.string :street
      t.string :state
      t.integer :zip

      t.timestamps
    end
  end
end
