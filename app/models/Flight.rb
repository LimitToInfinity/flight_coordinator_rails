class Flight < ApplicationRecord

    belongs_to :traveler, class_name: "Person"

end
