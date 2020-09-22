class Scientist < ApplicationRecord
    has_many :missions
    has_many :plants, through: :missions

    
end
