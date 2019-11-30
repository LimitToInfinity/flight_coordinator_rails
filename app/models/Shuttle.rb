class Shuttle < ApplicationRecord

    has_many :trips, class_name: "Ride"
    has_many :rides

end
