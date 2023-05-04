class ApplicationController < ActionController::Base
  def notify
    redirect_to("/home")
  end
end
