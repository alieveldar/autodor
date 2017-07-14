module DaysOfMonth
	def month_of_roadlist(month, excludedays, year)
		@month = month
		@excludedays = excludedays.split(' ')
		@year = year
		@first_day_of_month = (@year + '-' + @month + '-' + '1')
		@first_day_of_month = Date.strptime(@first_day_of_month, '%Y-%m-%d')
		@last_day_of_month = @first_day_of_month.end_of_month

end