# == Schema Information
#
# Table name: donaturs
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#

class Donatur < ActiveRecord::Base
  has_many :listings, dependent: :destroy
  accepts_nested_attributes_for :listings, allow_destroy: true
  before_create :set_list
  # before_action :set_list
  extend FriendlyId
  friendly_id :name, use: :slugged
  def should_generate_new_friendly_id?
    name_changed? || super
  end
  
  def set_list
    Year.all.each do |year|
      year.months.each do |month|
        listings.build(:month => month, :year => year)
      end
    end
  end
  
end
