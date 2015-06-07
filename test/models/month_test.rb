# == Schema Information
#
# Table name: months
#
#  id         :integer          not null, primary key
#  bulan      :string
#  year_id    :integer
#  urut       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MonthTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
