class Year < ActiveRecord::Base
  before_create :assign_month
  has_many :months #, dependent: :destroy
  accepts_nested_attributes_for :months
  
  protected
  def assign_month
    ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November','Desember'].each do |month|
      months.build(:bulan => month)
    end
  end
  
end
