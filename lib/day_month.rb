module DayMonth
	require 'date'

	def create_month(excludedays, year, month)
		@excludedays = excludedays.split(' ')
		@year = year
		@month = month

end
