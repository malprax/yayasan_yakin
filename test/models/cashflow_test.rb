# == Schema Information
#
# Table name: cashflows
#
#  id          :integer          not null, primary key
#  date        :string
#  name        :string
#  debit       :decimal(, )
#  credit      :decimal(, )
#  amount      :decimal(, )
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class CashflowTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
