class Api::V1::AppointmentsController < ApiController
  skip_before_action :verify_authenticity_token
  before_action :appointment_params, only: [:index]

  def index
    @appointments = Appointment.get_all
    respond_to do |format|
      format.json { render json: @appointments }
    end
  end

  def create
    @bike_id = Bike.find_by(modelName: params[:model])
    @appointment = Appointment.create(user: params[:user], model: params[:model],
                                      city: params[:city], date: params[:date],
                                      bike_id: @bike_id)
    render json: @appointment
  end

  private

  def appointment_params
    params.permit(:user, :model, :city, :bike_id, :date)
  end
end
