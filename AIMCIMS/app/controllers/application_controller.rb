class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :check_session
  
  def check_session
    if session["login"]==false || session["login"].nil? then
      respond_to do |format|
        format.html { render 'welcome/home' }
      end
    end
  end
end
