# == Schema Information
#
# Table name: stations
#
#  id         :integer          not null, primary key
#  name       :string
#  master     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  distance   :integer
#  outcity    :integer
#

class Station < ActiveRecord::Base
end
