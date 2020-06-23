class SiteStop < ApplicationRecord
  belongs_to :outing
  belongs_to :site
end
