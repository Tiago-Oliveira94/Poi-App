class ApplicationController < ActionController::Base
    include SessionsHelper

    def authorize
        redirect_to root_url unless logged_in?
    end
end
