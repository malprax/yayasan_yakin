# == Schema Information
#
# Table name: months
#
#  id         :integer          not null, primary key
#  bulan      :string
#  year_id    :integer
#  urut       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Month < ActiveRecord::Base
  belongs_to :year
  has_many :listings, through: :years, dependent: :destroy
  before_save :set_urut
  
  # def sudah_ada_bulan
#     Month.pluck(:bulan).to_s
#   end
  def set_urut
      if self.bulan == 'Januari'
        self.urut = 1
      elsif self.bulan == 'Februari'
        self.urut = 2
      elsif self.bulan == 'Maret'
        self.urut = 3
      elsif self.bulan == 'April'
        self.urut = 4
      elsif self.bulan == 'Mei'
        self.urut = 5
      elsif self.bulan == 'Juni'
        self.urut = 6
      elsif self.bulan == 'Juli'
        self.urut = 7
      elsif self.bulan == 'Agustus'
        self.urut = 8
      elsif self.bulan == 'September'
        self.urut = 9
      elsif self.bulan == 'Oktober'
        self.urut = 10
      elsif self.bulan == 'November'
        self.urut = 11
      elsif self.bulan == 'Desember'
        self.urut = 12
      end
  end

end
