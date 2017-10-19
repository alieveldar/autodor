# == Schema Information
#
# Table name: cartridge_supplies
#
#  id         :integer          not null, primary key
#  model      :integer
#  count      :integer
#  state      :integer
#  date       :date
#  service    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CartridgeSupplyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
