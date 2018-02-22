require './lib/docking_station'
DEFAULT_CAPACITY = 20
describe DockingStation do
    it "responde to release_bike" do
      expect(subject).to respond_to (:release_bike)
    end
=begin
  before(:each) do
    @dockingStation = DockingStation.new
    @bike = Bike.new
  end

  it { should respond_to(:release_bike) }

  it (" docking station should return bike") do
    @dockingStation.dock(@bike)
    expect(@dockingStation.release_bike).to eq @bike
  end
=end
# checks if DockingStation.release_bike is a Bike object
  # it { expect(subject.release_bike).to be_an(Bike) }

# checks DockingStation.dock method that takes 1 argument
  it { should respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bikes) }
  describe '#release_bike' do
    # it ' release bikes' do
    it 'raises an error when there are no bikes available' do
    # bike = Bike.new
    # subject.dock(bike)
    # Again, we need to return the bike we just docked
    # expect(subject.release_bike).to eq bike
    #  Add expectetion
    expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  it 'raises error when trying to dock bike in a full station with default capacity' do
    DockingStation::DEFAULT_CAPACITY.times do
      subject.dock Bike.new
    end
    expect { subject.dock(Bike.new) }.to raise_error "Sorry, station is full"
  end

  it "raises error when trying to dock bike in a full station with specified capacity" do
    docking_station = DockingStation.new(40)
    40.times { docking_station.dock(Bike.new)}
    expect { docking_station.dock(Bike.new) }.to raise_error "Sorry, station is full"
  end
end


#it "returns an error when there is not bike" do
#  expect {raise "oops"}.to raise_error
#end

  # def dock(bike)
  #   @bike = bike
  # end
