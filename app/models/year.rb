class Year < ActiveRecord::Base
  has_many :months, dependent: :destroy
end
