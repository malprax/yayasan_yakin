# == Schema Information
#
# Table name: recipients
#
#  id             :integer          not null, primary key
#  name           :string
#  nik            :string
#  born_place     :string
#  born_date      :string
#  gender         :string
#  blood_type     :string
#  address        :string
#  rukun_tetangga :string
#  rukun_warga    :string
#  kelurahan      :string
#  kecamatan      :string
#  city           :string
#  religion       :string
#  marital_status :string
#  job            :string
#  nationality    :string
#  pos_code       :string
#  province       :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  slug           :string
#

class Recipient < ActiveRecord::Base
  extend FriendlyId
  has_many :cards, dependent: :destroy
  accepts_nested_attributes_for :cards, allow_destroy: true
  before_create :assign_month
  friendly_id :name, use: :slugged
  def should_generate_new_friendly_id?
    name_changed? || super
  end
  
  def assign_month
    array = ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November','Desember']
    array.each do |a|
      cards.build(month: a, :recipient_id => :id)
    end
  end
  
  def alamat_lengkap
    "#{address}, RT #{rukun_tetangga}/RW #{rukun_warga}, Kelurahan #{kelurahan}, Kecamatan #{kecamatan}, #{province}, #{pos_code}"
  end
  
  def lahir
    "#{born_place}, #{born_date}"
  end
end
