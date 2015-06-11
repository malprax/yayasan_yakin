class Cashflow < ActiveRecord::Base
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

