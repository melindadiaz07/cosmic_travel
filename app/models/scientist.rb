class Scientist < ApplicationRecord
    has_many :missions
    has_many :plants, through: :missions

    validates_uniqueness_of :name, message: " must be unique"


    # private

    # def unique_name?(try_name)
    #     if Scientist.exists?(name: try_name) 
    #         errors.add(:name, "Name must be unique")
    #     end
    # end
end
