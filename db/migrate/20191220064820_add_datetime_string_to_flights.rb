class AddDatetimeStringToFlights < ActiveRecord::Migration[6.0]
  def change
    add_column :flights, :datetime_string, :string
  end
end
