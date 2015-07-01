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

