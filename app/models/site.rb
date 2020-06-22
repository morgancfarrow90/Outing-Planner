class Site < ApplicationRecord
  belongs_to :neighborhood
  belongs_to :user
end
