require_relative './bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
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
    @bikes.count >= @capacity
  end
end


#docking_station.dock
