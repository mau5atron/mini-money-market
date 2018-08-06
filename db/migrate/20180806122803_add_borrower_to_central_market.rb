class AddBorrowerToCentralMarket < ActiveRecord::Migration[5.1]
  def change
    add_reference :central_markets, :borrower, foreign_key: true
  end
end
