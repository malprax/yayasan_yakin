class Listing < ActiveRecord::Base
  has_many :donaturs, dependent: :destroy
  has_many :years
  has_many :months, through: :years
end
