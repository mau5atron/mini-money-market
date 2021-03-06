class CreateBorrowers < ActiveRecord::Migration[5.1]
  def change
    create_table :borrowers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone
      t.string :street
      t.string :state
      t.integer :zip
      t.string :company_name
      t.string :employer_street
      t.string :employer_state
      t.integer :employer_zip
      t.string :current_position
      t.string :start_date
      t.integer :salary

      t.timestamps
    end
  end
end
