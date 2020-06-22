class Special < ApplicationRecord
  has_many :days
  belongs_to :neighborhood
  belongs_to :user
end
