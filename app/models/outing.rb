class Outing < ApplicationRecord
  belongs_to :user
  belongs_to :neighborhood
  has_many :site_stops
  has_many :special_stops
  has_many :sites, through: :site_stops
  has_many :specials, through: :special_stops
  accepts_nested_attributes_for :sites
  accepts_nested_attributes_for :specials 
end
