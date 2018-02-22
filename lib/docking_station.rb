require_relative './bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock(bike)
    fail "Sorry, station is full" if full?
    @bikes << bike
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end
private
  def empty?
    @bikes.count == 0
  end

  def full?
    @bikes.count >= 20
  end
end


#docking_station.dock
