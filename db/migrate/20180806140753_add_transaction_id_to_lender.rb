class AddTransactionIdToLender < ActiveRecord::Migration[5.1]
  def change
    add_column :lenders, :transaction_id, :string
    add_index :lenders, :transaction_id
  end
end
