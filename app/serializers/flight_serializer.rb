class FlightSerializer
  include FastJsonapi::ObjectSerializer
  
  attributes :id, :direction, :datetime, :airport, 
    :airline, :number, :traveler_id, :traveler
  
  attribute :ride do |flight|
    Ride.find_by(flight: flight)
  end
end
