class Api::V1::BikesController < ApiController
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
end
