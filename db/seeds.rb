# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November','Desember'].each do |month|
#   months.build(:bulan => month)
# end
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# donaturs = Donatur
# donatur_list=[
#   'Sulaeman',
#   'Drs. Anwar Dg Sanre, M.Pd',
#   'Drs. H. Muchtar Rahim',
#   'Ukkas P. Lewa',
#   'Muhammad Askar, S.Kep, Ners, M.Kes',
#   'Sudirman, S.Ag',
#   'Ukkas P. Lewa',
#   'Atmam Amir, S.Pd, M.Pd',
#   'Drs. Bahar Sukkara, M.Pd',
#   'Arfah Takbir Assagaf',
#   'Drs. H. Muhammad Amir',
#   'Syahrir, ST',
#   'Mustafa Dg Milang',
#   'Sri Vitayani',
#   'Hj. Syarifah Sulaeman',
#   'Muh. Hanan Sulaeman',
#   'Nasrullah',
#   'Akhmad',
#   'Alimuddin, S.Pd',
#   'Jabbar'
# ]
# donatur_list.each do |donatur|
#   Donatur.create(:name => donatur)
# end

20.times{|i|Project.create!({title: "Project #{i + 1}"})}