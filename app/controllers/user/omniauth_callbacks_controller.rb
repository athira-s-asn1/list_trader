module User
  class OmniauthCallbacksController < Devise::OmniauthCallbacksController


    def facebook
      @user = ClientUser.create_or_fetch_fb_user(request.env["omniauth.auth"])
      if @user.persisted?
        sign_in_and_redirect @user, :event => :authentication
        set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
      else
        session["devise.facebook_data"] = request.env["omniauth.auth"]
        redirect_to new_client_user_registration_url
      end
    end
    
    def google_oauth2
     
      @user = ClientUser.create_or_fetch_google_user(request.env["omniauth.auth"])
 
      if @user.persisted?
        flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
        sign_in_and_redirect @user, :event => :authentication
      else
        session["devise.google_data"] = request.env["omniauth.auth"]
        redirect_to new_client_user_registration_url
      end
    end
    
    def failure
      redirect_to root_path
    end

  end
end