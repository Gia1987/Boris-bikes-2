require './lib/docking_station'
describe DockingStation do
#    it "responde to release_bike" do
#      expect(subject).to respond_to (:release_bike)
#    end
it { should respond_to(:release_bike) }
end
