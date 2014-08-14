require_relative 'bike_container'

class Garage

	include BikeContainer

	def initialize(options = {})
		@capacity = options.fetch(:capacity, capacity)
	end

	def fix_bikes!
		@bikes.each { |bike| bike.fix! }
	end
end



