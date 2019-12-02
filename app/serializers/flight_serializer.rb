class FlightSerializer
  include FastJsonapi::ObjectSerializer
  
  attributes :id, :direction, :datetime, :airport, 
    :airline, :number, :traveler_id, :traveler
  
  attribute :ride do |flight|
    ride = Ride.find_by(flight: flight)
    
    ride ?
      { id: ride.id, driver: ride.driver, shuttle: ride.shuttle } :
      nil
  end
end
