class Ride < ApplicationRecord

    belongs_to :driver, class_name: "Person"
    belongs_to :traveler, class_name: "Person"
    belongs_to :flight
    belongs_to :shuttle

    accepts_nested_attributes_for :shuttle

end