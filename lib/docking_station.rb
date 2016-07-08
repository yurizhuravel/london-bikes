require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
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
    @bikes.length >= DEFAULT_CAPACITY
  end

  def station_empty
    @bikes.empty?
  end

end
