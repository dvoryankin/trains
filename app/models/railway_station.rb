class RailwayStation < ApplicationRecord
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
  has_many :trains, foreign_key: :current_station_id

  validates :title, presence: true

  scope :ordered, -> { joins(:railway_stations_routes).order("railway_stations_routes.position").uniq }

  def update_position(route, position)
    station = route_station(route)
    station.update(position: position) unless station.nil?
  end

  def position_in(route)
    station = route_station(route)
    station.position unless station.nil?
  end

  private

  def route_station(route)
    railway_stations_routes.where(route_id: route).first
  end
end
