require './lib/bike'

describe Bike do
  before(:each) do
    @bike = Bike.new
  end
  it { should respond_to(:is_working?) }
  it "should return true if bike is working" do
    # bike = Bike.new
    @bike.bike_status("working")
    expect(@bike.is_working?).to eq true
  end
  it "should return false if bike is broken" do
    @bike.bike_status("broken")
  expect(@bike.is_working?).to eq false
end
end
