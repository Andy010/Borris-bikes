# Load BikeContainer
require_relative 'bike_container'

class DockingStation

	DEFAULT_CAPACITY = 20

	include BikeContainer

	def initialize(options = {})
		# self.capacity is calling the capacity=() method
		# (note the equals sign) defined in BikeContainer
		# capacity (the second argument to fetch()) is calling
		# the capacity() method in BikeContainer
		self.capacity = options.fetch(:capacity, capacity)
	end
end
