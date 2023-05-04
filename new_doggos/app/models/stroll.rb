class Stroll < ApplicationRecord
  belongs_to :dog
  belongs_to :dogsitter
end

#flemme de faire une classe intermédiaire pour Xdogs et strollId 