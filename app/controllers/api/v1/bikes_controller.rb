# rubocop:disable Style/EmptyMethod

class Api::V1::BikesController < ApiController
  before_action :bike_params, only: [:index]
  def show
  end

  def index
    @bikes = Bike.get_all
    respond_to do |format|
      format.json { render json: @bikes }
    end
  end

  private

  def set_bike
    @bike = Bike.find(params[:id])
  end

  def bike_params
    params.permit(:modelName, :description, :finance, :option,
                  :total, :duration, :picture)
  end
end

# rubocop:enable Style/EmptyMethod
