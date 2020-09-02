class Api::V1::AppointmentsController < ApiController
  def index
    @appointments = Appointment.get_all
    respond_to do |format|
      format.json {render json: @appointments}
    end
  end

  def create
    @appointment = Appointment.new(params[:appointmentData])

    if @appointment.save
      render :status => 200
    else
      # exception handling
      render :status => 500
    end
  end
end
