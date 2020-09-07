class Api::V1::AppointmentsController < ApiController
  skip_before_action :verify_authenticity_token

  def index
    @appointments = Appointment.get_all
    respond_to do |format|
      format.json { render json: @appointments }
    end
  end

  def create
    @bikeId = Bike.find_by_name(params[:model])
    @appointment = Appointment.create(user: params[:user], model: params[:model],
                                      city: params[:city], date: params[:date],
                                      bike_id: @bikeId)
    render json: @appointment
  end
end
