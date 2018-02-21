require './lib/docking_station'
describe DockingStation do
#    it "responde to release_bike" do
#      expect(subject).to respond_to (:release_bike)
#    end
it { should respond_to(:release_bike) }

# checks if DockingStation.release_bike is a Bike object
it { expect(subject.release_bike).to be_an(Bike) }

# checks DockingStation.dock method that takes 1 argument
it { should respond_to(:dock).with(1).argument }
it { is_expected.to respond_to(:bike) }

it 'returns docked bikes' do
  bike = Bike.new
  subject.dock(bike)
  # Again, we need to return the bike we just docked
  expect(subject.bike).to eq bike
end

end
