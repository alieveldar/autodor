# == Schema Information
#
# Table name: reports
#
#  id                 :integer          not null, primary key
#  station            :integer
#  f95                :integer
#  f92                :integer
#  f80                :integer
#  fdt                :integer
#  fgaz               :integer
#  magazine           :integer
#  vipcardonstock     :integer
#  vipcardtreid       :integer
#  discountonstock    :integer
#  discounttreid      :integer
#  carwasher          :integer
#  allinstation       :integer
#  allf95             :integer
#  allf92             :integer
#  allf80             :integer
#  allfdt             :integer
#  allfgaz            :integer
#  allmagazine        :integer
#  allvipcardonstock  :integer
#  allvipcardtreid    :integer
#  alldiscountonstock :integer
#  alldiscounttreid   :integer
#  allcarwasher       :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  changetime         :date
#  deleted_at         :datetime
#

class Report < ActiveRecord::Base
	acts_as_paranoid
	validates :f95, numericality: { only_integer: true }
	validates :f92, numericality: { only_integer: true }
	validates :f80, numericality: { only_integer: true }
	validates :fdt, numericality: { only_integer: true }
	validates :fgaz, numericality: { only_integer: true }
	validates :magazine, numericality: { only_integer: true }
	validates :vipcardonstock, numericality: { only_integer: true }
	validates :vipcardtreid, numericality: { only_integer: true }
	validates :discountonstock, numericality: { only_integer: true }
	validates :discounttreid, numericality: { only_integer: true }
	validates :carwasher, numericality: { only_integer: true }
	validates :allinstation, numericality: { only_integer: true }
end
