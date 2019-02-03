class Ingredient < ApplicationRecord


has_many :ingredient_hoagie
has_many :hoagies, :through => :ingredient_hoagie
end
