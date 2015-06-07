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
#

class Recipient < ActiveRecord::Base
  def alamat_lengkap
    "#{address}, RT #{rukun_tetangga}/RW #{rukun_warga}, Kelurahan #{kelurahan}, Kecamatan #{kecamatan}, #{province}, #{pos_code}"
  end
  
  def lahir
    "#{born_place}, #{born_date}"
  end
end
