class Donatur < ActiveRecord::Base
  has_many :listings, dependent: :destroy
  accepts_nested_attributes_for :listings, allow_destroy: true
  before_save :set_list
  # before_action :set_list
  def set_list
    Year.all.each do |year|
      year.months.each do |month|
        listings.build(:month => month, :year => year)
      end
    end
  end
  
end
