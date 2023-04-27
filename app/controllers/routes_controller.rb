class RoutesController < ApplicationController
  def show
    @route = Route.find(params[:id])
    render json: @route
  end

  def index
    @routes = Route.all
    render json: @routes
  end

  def create
    user = User.first
    start_location = user.home_location
    end_location = user.work_location

    route = Google::Maps.route(start_location, end_location)

    Route.create(
      origin: start_location,
      destination: end_location,
      route: "#{start_location} #{end_location} route",
      total_travel_time: route.duration.text,
      travel_mode: "driving",
      distance: route.distance.text
    )
  end
end
