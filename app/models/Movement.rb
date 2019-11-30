class Movement

    belongs_to :driver, class_name: "Person"
    belongs_to :traveler, class_name: "Person"

end