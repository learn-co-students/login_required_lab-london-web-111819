class SecretsController < ApplicationController
    before_action :require_login

    def show
    end

    def inputform
    end

    def inputform_action
        session[:car_value] = params[:car_value]
        redirect_to '/'
    end

end