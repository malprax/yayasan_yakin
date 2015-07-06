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
  scope :order_date, ->{order('date asc')}
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
end

