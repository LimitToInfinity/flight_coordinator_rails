class Person < ApplicationRecord

    has_many :rides, class_name: "Ride", foreign_key: :driver_id
    has_many :travelers, through: :rides, dependent: :destroy

    has_many :rides, class_name: "Ride", foreign_key: :traveler_id
    has_many :drivers, through: :rides, dependent: :destroy

end