class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.string :direction
      t.datetime :datetime
      t.string :airport
      t.string :airline
      t.string :number
      t.references :traveler

      t.timestamps
    end

    add_foreign_key :flights, :people, column: "traveler_id", primary_key: "id"
  end
end
