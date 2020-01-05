class RootPagesController < ApplicationController
  def index
<<<<<<< HEAD
    @events = Event.order(:created_at).take(4)
=======
    @events = Event.where('start_time >= ?', Time.now).paginate(page: params[:page])
>>>>>>> event_page
  end

  def show
  end

end
