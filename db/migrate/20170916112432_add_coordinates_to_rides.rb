class AddCoordinatesToRides < ActiveRecord::Migration[5.0]
  def change
    add_column :rides, :lat_from, :float
    add_column :rides, :long_from, :float
    add_column :rides, :lat_to, :float
    add_column :rides, :long_to, :float
  end
end
