require 'garage'

describe Garage do

	let(:garage) { Garage.new(:capacity => 123) }
	let(:bike) { Bike.new }
	let(:bike2) {Bike.new }

	it "should allow setting default capacity on initialising" do
		expect(garage.capacity).to eq(123)
	end

	it "should be able to fix bikes" do
		garage.dock(bike)
		garage.dock(bike2)
		bike.break!
		bike2.break!	
		garage.fix_bikes!
		expect(bike.broken?).to be false
		expect(bike2.broken?).to be false
	end


end