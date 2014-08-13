require 'bike'

describe Bike do

	let(:bike) { Bike.new }

	it "should not be broken after we create it" do
		expect(bike).not_to be_broken
	end

	it "should be able to break" do
		bike.break!
		expect(bike).to be_broken
	end

	it "should be able to be fixed" do
		bike.break!
		bike.fix!
		expect(bike).not_to be_broken
	end
end






















describe Andy do
	it "should be broken" do
		andy = Andy.new
		andy.break!
		expect(andy).to be_broken
	end
	it 'should be able to heal thyself' do
		andy = Andy.new
		andy.break!
		andy.healed?
		expect(andy).to be_healed
	end
end