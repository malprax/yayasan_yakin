class Donatur < ActiveRecord::Base
  has_many :listings, dependent: :destroy

  # before_action :set_list
  # def set_list
#     ['Sulaeman',
#       'Drs. Anwar Dg Sanre, M.Pd',
#       'Drs. H. Muchtar Rahim',
#       'Ukkas P. Lewa',
#       'Muhammad Askar, S.Kep, Ners, M.Kes',
#       'Sudirman, S.Ag',
#       'Atman Amir, S.Pd, M.Pd',
#      'Drs. Bahar Sukkara, M.Pd',
#      'Arfah Takbir Assagaf',
#      'Drs. H. Muhammad Amir',
#      'Syahrir, ST',
#      'Muh Hanan Sulaeman',
#      'Hj. Syarifah Sulaeman',
#      'Muh. Hanan Sulaeman',
#      'Nasrullah',
#      'Akhmad',
#      'Alimuddin, S.Pd',
#      'Jabbar'
#           ].each do |donatur|
#       donaturs.build(:name => donatur)
#     end
  # end
  
end
