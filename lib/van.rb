require_relative 'bike_container'

class Van

	include BikeContainer

	def pick_up_from_dock(station)
		station.broken_bikes.each do |bike|
		station.release(bike)
		dock(bike)
		end
	end

	def pick_up_from_garage(garage)
		garage.available_bikes.each do |bike|
		garage.release(bike)
		dock(bike)
	end

	def deliver_to_garage(garage)
		broken_bikes.each do |bike|
		release(bike)
		garage.dock(bike)
		end
	end

	def deliver_to_dock(station)
		available_bikes.each do |bike|
		release(bike)
		station.dock(bike)
		end
	end



	end

end