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

require 'test_helper'

class RecipientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
