require './lib/station.rb'

class Journey

  attr_reader :entry_station, :exit_station

  MIN_FARE = 1
  PENALTY_FARE = 6

  def initialize(entry_station = nil, exit_station = nil)
    @entry_station = entry_station
    @exit_station = exit_station
  end

  def start(entry)
    @entry_station = entry
  end

  def finish(departure)
    @exit_station = departure
  end

  def in_journey?
    !entry_station.nil? && exit_station.nil?
  end

  def valid?
    !entry_station.nil? && !exit_station.nil?
  end

  def fare
    valid? ? calculate_fare : PENALTY_FARE
  end

  def calculate_fare
    MIN_FARE + (((entry_station.zone) - (exit_station.zone)).abs)
  end

end
