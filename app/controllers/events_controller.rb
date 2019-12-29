class EventsController < ApplicationController
<<<<<<< HEAD
  def show
    @event = Event.find(params[:id])
=======
  before_action :user_signed_in?, only: [:update, :create]
  before_action :correct_user, only: [:destroy]
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
  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(event_params)
      flash[:success] = "イベントがアップデートされました"
      redirect_to @event
    else
      render 'edit'
    end
  end

  def destroy
    @event.destroy
    flash[:success] = "イベントが削除されました"
    redirect_to user_path(current_user.id)
  end

  private

  # ストロングパラメーター
  def event_params
    params.require(:event).permit(:title, :details, :start_time, :place, :image)
  end

  def correct_user
    @event = current_user.events.find_by(id: params[:id])
    redirect_to user_path(current_user.id) if @event.nil?
>>>>>>> event_page
  end
end