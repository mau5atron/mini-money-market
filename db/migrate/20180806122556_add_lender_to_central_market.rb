class AddLenderToCentralMarket < ActiveRecord::Migration[5.1]
  def change
    add_reference :central_markets, :lender, foreign_key: true
  end
end
