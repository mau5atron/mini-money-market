class AddInvestFieldsToLender < ActiveRecord::Migration[5.1]
  def change
    add_column :lenders, :routing_number, :integer
    add_column :lenders, :bank_account_number, :integer
    add_column :lenders, :employer_name, :string
    add_column :lenders, :employer_phone, :integer
    add_column :lenders, :start_date, :datetime
    add_column :lenders, :end_date, :datetime
    add_column :lenders, :deposit_amount, :integer
  end
end
