class RootPagesController < ApplicationController
  def index
    @events = Event.order(:created_at).take(4)
  end

  def show
  end
end
