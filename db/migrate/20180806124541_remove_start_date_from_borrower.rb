class RemoveStartDateFromBorrower < ActiveRecord::Migration[5.1]
  def change
    remove_column :borrowers, :start_date, :string
  end
end
