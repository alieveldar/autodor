# == Schema Information
#
# Table name: day_road_lists
#
#  id         :integer          not null, primary key
#  day        :date
#  fuel       :integer
#  station    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class DayRoadList < ActiveRecord::Base
end
