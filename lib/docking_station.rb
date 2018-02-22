require_relative './bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock(bike)
    fail "Sorry, station is full" if @bikes.count >= 20
    @bikes << bike
  end

  def release_bike
    fail 'No bikes available' if @bikes.count == 0
    bike = @bikes.delete_at(-1)
    bike
  end
end

#docking_station.dock
