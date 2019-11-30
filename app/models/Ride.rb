class Ride < ApplicationRecord

    belongs_to :driver, class_name: "Person"
    belongs_to :traveler, class_name: "Person"
    belongs_to :flight
    belongs_to :shuttle

    # after_create :create_inverse, unless: :has_inverse?
    # after_destroy :destroy_inverses, if: :has_inverse?

    # def create_inverse
    #     self.class.create(inverse_ride_options)
    # end

    # def destroy_inverses
    #     inverses.destroy_all
    # end

    # def has_inverse?
    #     self.class.exists?(inverse_ride_options)
    # end

    # def inverses
    #     self.class.where(inverse_ride_options)
    # end

    # def inverse_ride_options
    #     { traveler_id: driver_id, driver_id: traveler_id }
    # end

    # validate :realism

    # private

    # def realism
    #     return unless driver_id == traveler_id
    #     errors.add :driver, "You can't pick yourself up!"
    # end

end