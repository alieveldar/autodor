# == Schema Information
#
# Table name: road_lists
#
#  id         :integer          not null, primary key
#  date       :date
#  timeout    :text
#  timein     :text
#  fuelout    :integer
#  fuelin     :integer
#  cardcredit :integer
#  fuelnorm   :integer
#  fuelfakt   :integer
#  odometr    :integer
#  maping     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class RoadListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
