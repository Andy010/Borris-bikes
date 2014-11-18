require 'van'

describe Van do
	
	let(:van) 		{Van.new}
	let(:station) 	{DockingStation.new}
	let(:garage) 	{Garage.new}

	it "should be able to pick up broken bikes from dock" do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break!
		station.dock(working_bike)
		station.dock(broken_bike)
		van.pick_up_from_dock(station)
		expect(van.broken_bikes).to eq([broken_bike])
	end

	it "should be able to pick up available bikes from garage" do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break!
		garage.dock(working_bike)
		garage.dock(broken_bike)
		van.pick_up_from_garage(garage)
		expect(van.available_bikes).to eq([working_bike])
	end

	it "should be able to deliver broken bikes to garage" do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break!
		van.dock(working_bike)
		van.dock(broken_bike)
		van.deliver_to_garage(garage)
		expect(garage.broken_bikes).to eq([broken_bike])
	end

	it "should be able to deliver fixed bikes back to dock" do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break!
		van.dock(working_bike)
		van.dock(broken_bike)
		van.deliver_to_dock(station)
		expect(station.available_bikes).to eq([working_bike])
	end

end