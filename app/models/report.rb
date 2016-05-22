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
#

class Report < ActiveRecord::Base
end
