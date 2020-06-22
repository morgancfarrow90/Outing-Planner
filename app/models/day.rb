class Day < ApplicationRecord
  has_many :sites
  has_many :specials
end
