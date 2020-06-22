class Neighborhood < ApplicationRecord
  has_many :sites
  has_many :specials 
end
