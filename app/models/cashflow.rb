# == Schema Information
#
# Table name: cashflows
#
#  id          :integer          not null, primary key
#  date        :string
#  name        :string
#  debit       :decimal(, )
#  credit      :decimal(, )
#  amount      :decimal(, )
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cashflow < ActiveRecord::Base
  scope :order_date, ->{data_scope}
  # scope :order_created, ->{ self.sort_by &:created_at }
  def self.pemasukan
    self.sum(:debit)
  end

  def self.pengeluaran
    self.sum(:credit)
  end
  def self.saldo_kas
    pemasukan - pengeluaran
  end
  
  # def date_string
 #    date.to_s(:db)
# rescue ArgumentError
#   @date_at_invalid = true
 #  end
 #
 #  def date_string=(date_string)
 #    self.date = Time.parse(date_string)
 #  end
 
 # def validate
#    errors.add(:date, "is invalid") if@date_at_invalid
#  end
 def date_date=(date)
   date.to_i
 end
 
 # def date_month=(urut_bulan)
 #   month = date.split('',4)[3].split[0]
 #   if month == Januari
 #     urut_bulan = 1
 #   elsif month == Februari
 #     urut_bulan = 2
 #   elsif month == Maret
 #     urut_bulan = 3
 #   elsif month == April
 #     urut_bulan = 4
 #   elsif month == Mei
 #     urut_bulan = 5
 #   elsif month == Juni
 #     urut_bulan = 6
 #   elsif month == Juli
 #     urut_bulan = 7
 #   elsif month == Agustus
 #     urut_bulan = 8
 #   elsif month == September
 #     urut_bulan = 9
 #   elsif month == Oktober
 #     urut_bulan = 10
 #   elsif month == Nopember
 #     urut_bulan = 11
 #   elsif month == Desember
 #     urut_bulan = 12
 #   end
 # end
 def self.data_scope
   all.sort_by do |item|
     DateTime.parse(item[:date]).to_i * 1
   end
 end
end

