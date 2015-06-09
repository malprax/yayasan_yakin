# == Schema Information
#
# Table name: recipient_cards
#
#  id           :integer          not null, primary key
#  month        :string
#  amount       :string
#  donatur      :string
#  receiver     :string
#  urut         :integer
#  recipient_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class RecipientCard < ActiveRecord::Base
  belongs_to :recipient
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
