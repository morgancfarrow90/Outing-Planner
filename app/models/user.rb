class User < ApplicationRecord
  has_secure_password
  has_many :sites
  has_many :specials
  
end
