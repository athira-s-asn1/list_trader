module User
  class HomeController < User::BaseController

    before_action :authenticate_client_user!
    skip_before_action :verify_authenticity_token
    
    def index
      @page_title = "Home | User"
      @nav = 'user/home'
    end

    private

    

  end
end
