class HomeController < ApplicationController
  def index
    @status_update = StatusUpdate.new
    @status_updates = StatusUpdate.reverse_chron_order
  end




end
