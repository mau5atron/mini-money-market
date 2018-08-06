class AddLoanFieldsToBorrower < ActiveRecord::Migration[5.1]
  def change
    add_column :borrowers, :routing_number, :integer
    add_column :borrowers, :bank_account, :integer
    add_column :borrowers, :monthly_income, :integer
    add_column :borrowers, :loan_amount, :integer
    add_column :borrowers, :loan_term, :string
    add_column :borrowers, :employer_phone, :string
    add_column :borrowers, :start_date, :datetime
    add_column :borrowers, :end_date, :datetime
  end
end
