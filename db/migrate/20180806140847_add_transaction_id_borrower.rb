class AddTransactionIdBorrower < ActiveRecord::Migration[5.1]
  def change
  	add_column :borrowers, :transaction_id, :string
    add_index :borrowers, :transaction_id
  end
end
