require_relative 'bike'

class DockingStation
  attr_reader :bike, :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if station_empty
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if station_full
    @bikes << bike
  end

  private

  def station_full
    @bikes.length > 19
  end

  def station_empty
    @bikes.empty?
  end

end
