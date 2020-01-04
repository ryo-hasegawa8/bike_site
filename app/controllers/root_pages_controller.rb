class RootPagesController < ApplicationController
  def index
    @events = Event.where('start_time >= ?', Time.now).paginate(page: params[:page])
  end

  def show
  end

end
