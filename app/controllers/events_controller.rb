class EventsController < ApplicationController
  before_action :user_signed_in?, only: [:edit, :update, :new, :create]
  def show
    @event = Event.find_by(id: params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      flash[:success] = "イベントが作成されました！"
      redirect_to user_path(current_user)
    else
      render 'new'
    end

  end

  private
    #ストロングパラメーター
    def event_params
      params.require(:event).permit(:title, :details, :start_time, :place, :image )
    end
end
