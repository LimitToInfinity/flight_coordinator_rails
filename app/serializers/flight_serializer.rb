class FlightSerializer
  include FastJsonapi::ObjectSerializer
  
  attributes :id, :direction, :datetime, :airport, 
    :airline, :number, :traveler_id, :traveler
end
