class AppointmentsController < ApplicationController
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
