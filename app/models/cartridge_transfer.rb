# == Schema Information
#
# Table name: cartridge_transfers
#
#  id         :integer          not null, primary key
#  model      :integer
#  count      :integer
#  date       :date
#  department :text
#  person_out :integer
#  person_in  :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CartridgeTransfer < ActiveRecord::Base
end
