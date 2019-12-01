class Person < ApplicationRecord

    has_many :flights, foreign_key: :traveler_id

    has_many :trips, foreign_key: :driver_id, class_name: "Ride"
    has_many :travelers, through: :trips, source: :traveler, dependent: :destroy
    has_many :groups, through: :trips, foreign_key: :driver_id, source: :shuttle
    
    has_many :rides, foreign_key: :traveler_id, class_name: "Ride"
    has_many :drivers, through: :rides, source: :driver, dependent: :destroy
    has_many :shuttles, through: :rides, foreign_key: :traveler_id

    # def self.serialize_all
    #     data = {}

    #     people = all.map do |person|
    #         person.serialize
    #     end

    #     data["people"] = people
        
    #     data
    # end

    # def serialize
    #     instance = {}

    #     instance["id"] = id
    #     instance["name"] = name
    #     instance["image"] = image

    #     instance["flights"] = flights

    #     instance["drivers"] = drivers
    #     instance["rides"] = ride_breakdown
    #     instance["shuttles"] = shuttle_breakdown

    #     instance["travelers"] = travelers
    #     instance["trips"] = trip_breakdown
    #     instance["groups"] = group_breakdown

    #     instance["created_at"] = created_at
    #     instance["updated_at"] = updated_at

    #     instance
    # end

    # def ride_breakdown
    #     rides.map do |ride|
    #         ride_instance = {}
    #         ride_instance["id"] = ride.id
    #         ride_instance["driver_id"] = ride.driver_id
    #         ride_instance["traveler_id"] = ride.traveler_id
    #         ride_instance["flight_id"] = ride.flight_id
    #         ride_instance["shuttle_id"] = ride.shuttle_id
    #         ride_instance["driver_name"] = ride.driver.name
    #         ride_instance["traveler_name"] = ride.traveler.name
    #         ride_instance["shuttle_date_time"] = ride.shuttle.datetime
    #         ride_instance["flight"] = ride.flight

    #         ride_instance
    #     end
    # end

    # def shuttle_breakdown
    #     shuttles.uniq.map do |shuttle|
    #         shuttle_instance = {}
    #         shuttle_instance["id"] = shuttle.id
    #         shuttle_instance["rides"] = shuttle.rides

    #         shuttle_instance
    #     end
    # end

    # def trip_breakdown
    #     trips.map do |trip|
    #         trip_instance = {}
    #         trip_instance["id"] = trip.id
    #         trip_instance["driver_id"] = trip.driver_id
    #         trip_instance["traveler_id"] = trip.traveler_id
    #         trip_instance["flight_id"] = trip.flight_id
    #         trip_instance["shuttle_id"] = trip.shuttle_id
    #         trip_instance["driver_name"] = trip.driver.name
    #         trip_instance["traveler_name"] = trip.traveler.name
    #         trip_instance["shuttle_date_time"] = trip.shuttle.datetime
    #         trip_instance["flight"] = trip.flight

    #         trip_instance
    #     end
    # end

    # def group_breakdown
    #     groups.uniq.map do |group|
    #         group_instance = {}
    #         group_instance["id"] = group.id
    #         group_instance["trips"] = group.trips

    #         group_instance
    #     end
    # end

end