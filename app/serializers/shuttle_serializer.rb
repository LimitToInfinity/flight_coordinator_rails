class ShuttleSerializer
  include FastJsonapi::ObjectSerializer
  
  attributes :id, :datetime,
    :rides, :drivers, :travelers

  attribute :drivers do |shuttle|
    shuttle.drivers.uniq
  end
end
