class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to :controller => 'swimmers', :action => 'index'
    end
  end
end
