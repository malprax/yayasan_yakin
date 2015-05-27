class Listing < ActiveRecord::Base
  belongs_to :donatur
  belongs_to :year
  belongs_to :month
  # has_many :months, through: :years
  


end
