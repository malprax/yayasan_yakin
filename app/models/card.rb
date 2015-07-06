# == Schema Information
#
# Table name: cards
#
#  id           :integer          not null, primary key
#  month        :string
#  date         :string
#  amount       :decimal(, )
#  employee     :string
#  urut         :integer
#  recipient_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Card < ActiveRecord::Base
  belongs_to :recipients
  before_create :set_urut
  
  # def sudah_ada_month
#     Month.pluck(:month).to_s
#   end

  def set_urut
      if self.month == 'Januari'
        self.urut = 1
      elsif self.month == 'Februari'
        self.urut = 2
      elsif self.month == 'Maret'
        self.urut = 3
      elsif self.month == 'April'
        self.urut = 4
      elsif self.month == 'Mei'
        self.urut = 5
      elsif self.month == 'Juni'
        self.urut = 6
      elsif self.month == 'Juli'
        self.urut = 7
      elsif self.month == 'Agustus'
        self.urut = 8
      elsif self.month == 'September'
        self.urut = 9
      elsif self.month == 'Oktober'
        self.urut = 10
      elsif self.month == 'November'
        self.urut = 11
      elsif self.month == 'Desember'
        self.urut = 12
      end
  end
  
end
