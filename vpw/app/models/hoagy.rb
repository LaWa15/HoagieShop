class Hoagy < ApplicationRecord

    has_many :ingredient_hoagie
    has_many :ingredients, :through => :ingredient_hoagie
end
