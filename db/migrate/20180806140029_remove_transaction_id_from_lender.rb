class RemoveTransactionIdFromLender < ActiveRecord::Migration[5.1]
  def change
  	remove_column :lenders, :transaction_id, :string
  end
end
