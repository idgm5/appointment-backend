class Api::V1::AppointmentsController < ApiController
  skip_before_action :verify_authenticity_token

  def index
    @appointments = Appointment.get_all
    respond_to do |format|
      format.json {render json: @appointments}
    end
  end

  def create
    @appointment = Appointment.new(user: params[:user], model: params[:model], city: params[:city], date: params[:date])
    render json: @appointment
  end
end
