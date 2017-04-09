require 'date'
file = File.new('/tmp/sds.rb', 'w')
data = Date.today
@n = 500
@stat = 1
@fuel = 10
@n.times do
  file.puts "DayRoadList.create!(day: " + "'" + data.to_s + "'" + ", fuel: " + @fuel.to_s + ", station: 31)"
  @fuel = @fuel + 1
  data = data + 10
end
file.close

