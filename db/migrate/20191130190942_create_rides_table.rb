class CreateRidesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :rides do |t|
      t.references :driver, index: true
      t.references :traveler
      t.references :flight
      t.references :shuttle

      t.timestamps
    end

    add_foreign_key :rides, :people, column: 'driver_id', primary_key: 'id'
    add_foreign_key :rides, :people, column: 'traveler_id', primary_key: 'id'

    add_index :rides, %i[traveler_id driver_id flight_id], unique: true
    # add_index :rides, [:driver_id, :traveler_id] # , unique: true
  end
end
