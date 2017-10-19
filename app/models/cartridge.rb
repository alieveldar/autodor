# == Schema Information
#
# Table name: cartridges
#
#  id         :integer          not null, primary key
#  model      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cartridge < ActiveRecord::Base
end
