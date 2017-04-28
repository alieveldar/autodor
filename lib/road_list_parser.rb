class RoadListParser

	def initialize(year, month, days, startodometr, check_startodometr, startfuellitres, check_startfuellitres)

		@year = year
		@month = month
		@excludedays = days
		@startodometr = startodometr
		@check_startodometr = check_startodometr
		@startfuellitres = startfuellitres
		@check_startfuellitres = check_startfuellitres
		@ready_road_list
	end

	
end
