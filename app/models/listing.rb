# == Schema Information
#
# Table name: listings
#
#  id         :integer          not null, primary key
#  amount     :decimal(, )
#  year_id    :integer
#  month_id   :integer
#  donatur_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  urut       :integer
#

class Listing < ActiveRecord::Base
  before_save :set_urut
  belongs_to :donatur
  belongs_to :year
  belongs_to :month
  validates_presence_of :donatur
  # has_many :months, through: :years
  
  def set_urut
      if self.month.bulan == 'Januari'
        self.urut = 1
      elsif self.month.bulan == 'Februari'
        self.urut = 2
      elsif self.month.bulan == 'Maret'
        self.urut = 3
      elsif self.month.bulan == 'April'
        self.urut = 4
      elsif self.month.bulan == 'Mei'
        self.urut = 5
      elsif self.month.bulan == 'Juni'
        self.urut = 6
      elsif self.month.bulan == 'Juli'
        self.urut = 7
      elsif self.month.bulan == 'Agustus'
        self.urut = 8
      elsif self.month.bulan == 'September'
        self.urut = 9
      elsif self.month.bulan == 'Oktober'
        self.urut = 10
      elsif self.month.bulan == 'November'
        self.urut = 11
      elsif self.month.bulan == 'Desember'
        self.urut = 12
      end
  end
  

end
