class AttendancesController < ApplicationController
  def create
    @attendance = current_user.attendances.create(event_id: params[:post_id])
    redirect_back(fallback_location: event_path(params[:event_id]))
  end

  def destroy
    @attendance = Attendance.find_by(event_id: parames[:event_id])
    @attendance.destroy
    redirect_back(fallback_location: event_path(params[:event_id]))
  end
end
