class Recipient < ActiveRecord::Base
  def alamat_lengkap
    "#{address}, RT #{rukun_tetangga}/RW #{rukun_warga}, Kelurahan #{kelurahan}, Kecamatan #{kecamatan}, #{province}, #{pos_code}"
  end
  
  def lahir
    "#{born_place}, #{born_date}"
  end
end
