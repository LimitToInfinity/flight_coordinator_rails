class Person

    has_many :driver_movements, class_name: "Movement", foreign_key: :driver_id
    has_many :travelers, through: :driver_movements

    has_many :traveler_movements, class_name: "Movement", foreign_key: :traveler_id
    has_many :drivers, through: :traveler_movements

end