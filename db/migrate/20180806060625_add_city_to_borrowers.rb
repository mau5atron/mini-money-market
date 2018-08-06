class AddCityToBorrowers < ActiveRecord::Migration[5.1]
  def change
    add_column :borrowers, :city, :string
  end
end
