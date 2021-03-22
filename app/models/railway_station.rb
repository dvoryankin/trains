class RailwayStation < ApplicationRecord
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
  has_many :trains, foreign_key: :current_station_id

  validates :title, presence: true

  scope :ordered, -> { joins(:railway_stations_routes).order("railway_stations_routes.position").distinct }

  def update_position(route, position)
    station = route_station(route)
    station.update(position: position) if station
  end

  def position_in(route)
    route_station(route).try(:position)
  end

  def update_time(route, arrival, departure)
    station = route_station(route)
    station.update(arrival: arrival, departure: departure) if station
  end

  def time(route, time_type)
    route_station(route).try(time_type) #.try(:strftime, "%H:%M")
  end

  private

  def route_station(route)
    @route_station ||= railway_stations_routes.where(route_id: route).first
  end
end
