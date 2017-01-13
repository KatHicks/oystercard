require "./lib/station.rb"
require "./lib/journey.rb"
require "./lib/journeylog.rb"

class Oystercard

  attr_reader :balance, :journey_log, :journey

  INITIAL_BALANCE = 0
  BALANCE_LIMIT = 90
  MIN_BALANCE = 1

  def initialize(balance = INITIAL_BALANCE)
    @balance = balance
    @journey_log = JourneyLog.new
  end

  def top_up(amount)
    raise "£#{LIMIT} limit reached" if balance + amount >= BALANCE_LIMIT
    @balance += amount
  end

  def touch_in(entry_station)
    raise "Insufficient funds" if balance < MIN_BALANCE
    journey_log.start(entry_station)
    deduct(journey_log.latest_journey.fare) if !journey_log.latest_journey.nil? && !journey_log.latest_journey.valid?
  end

  def touch_out(exit_station)
    journey_log.finish(exit_station)
    deduct(journey_log.latest_journey.fare)
  end

private

  def deduct(fare)
    @balance -= fare
  end

end
