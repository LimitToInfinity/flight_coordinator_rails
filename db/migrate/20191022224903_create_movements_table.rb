class CreateMovementsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :movements do |t|
      t.string :movement_type
      t.datetime :datetime
      t.string :airport
      t.string :airline
      t.string :flight_number

      t.references :driver, index: true
      t.references :traveler, index: true
    end
    add_foreign_key :movements, :people, column: "driver_id", primary_key: "id"
    add_index :movements, [:traveler_id, :driver_id], unique: true
    
    add_foreign_key :movements, :people, column: "traveler_id", primary_key: "id"
    add_index :movements, [:driver_id, :traveler_id], unique: true
  end
end
