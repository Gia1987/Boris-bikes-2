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
    fail "Sorry, this bike is broken" if @bikes[-1].is_working? == false
    bike = @bikes.delete_at(-1)
    bike

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
