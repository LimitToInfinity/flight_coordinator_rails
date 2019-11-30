class Person < ApplicationRecord

    has_many :pick_ups, class_name: "Movement", foreign_key: :driver_id
    has_many :travelers, through: :pick_ups, dependent: :destroy

    has_many :travels, class_name: "Movement", foreign_key: :traveler_id
    has_many :drivers, through: :travels, dependent: :destroy

end