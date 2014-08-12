class Bike

	# the intilize method is always called when
	#you create a new class by typing Bike.new
	def initialize
		# all instance variables beging with '@'
		# this must be an instance variable because
		#we'll need it in other methods
		@broken = false
	end

	def broken?
		# instance variables are accessibloe in
		#all methods
		@broken
	end
	
	def break!
		# and any instance method can update them
		@break = true
	end
	
	def fix!
		true
	end
end

























class Andy
	def broken?
		true
	end
	def break!
	end
	def healed?
		true
	end
end