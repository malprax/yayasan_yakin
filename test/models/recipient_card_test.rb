# == Schema Information
#
# Table name: recipient_cards
#
#  id           :integer          not null, primary key
#  month        :string
#  amount       :string
#  donatur      :string
#  receiver     :string
#  urut         :integer
#  recipient_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class RecipientCardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
