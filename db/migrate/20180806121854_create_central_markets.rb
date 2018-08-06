class CreateCentralMarkets < ActiveRecord::Migration[5.1]
  def change
    create_table :central_markets do |t|

      t.timestamps
    end
  end
end
