require_relative './bike'

class DockingStation
  attr_reader :bike

    def dock(bike)
      fail "Sorry, station is full" if !(self.bike == nil)
      @bike = bike
    end

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

end

#docking_station.dock
