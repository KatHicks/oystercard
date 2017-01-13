require "./lib/journey.rb"

class JourneyLog

  attr_reader :journey_history, :current_journey

  def initialize(current_journey = nil)
    @journey_history = []
    @current_journey = current_journey
  end

  def start(entry)
    if current_journey.nil? || !current_journey.in_journey?
      create_journey(entry)
    else
      finish(nil)
      create_journey(entry)
    end
  end

  def finish(departure)
    start(nil) if !current_journey.in_journey?
    @current_journey.finish(departure)
    @journey_history << current_journey
  end

  def show_journeys
    "Here is your journey history:\n"
    journeys.map do |journey|
      output << "Entry station: #{journey.entry_station}. Exit station: #{journey.exit_station}."
    end
    output
  end

  def latest_journey
    journey_history.last
  end

  private

  def create_journey(entry)
    @current_journey = Journey.new
    @current_journey.start(entry)
  end

  def journeys
    @journey_history.dup
  end

end
