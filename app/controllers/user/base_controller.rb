module User
  class BaseController < ApplicationController 

    layout 'user'
    
    # include Devise::Controllers::Helpers 

    protected

    def authenticate_client_user!
      if client_user_signed_in?
        super
      else
        redirect_to new_client_user_session_path, :notice => 'You are not logged in or your session is expired! Please login.'
        ## if you want render 404 page
        ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
      end
    end
    
    def get_current_route
    @route="#{params[:controller]}##{params[:action]}"
       @route=@route.split("/")
      return @route[1]
  end
  end
end
