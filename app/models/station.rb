# == Schema Information
#
# Table name: stations
#
#  id         :integer          not null, primary key
#  name       :string
#  master     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Station < ActiveRecord::Base
end
