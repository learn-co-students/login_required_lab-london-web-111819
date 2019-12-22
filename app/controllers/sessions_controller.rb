class SessionsController < ApplicationController


    def new
        render 'new'
    end

    def create
        unless params[:name].empty?
            session[:name] = params[:name]
            else
            redirect_to login_path
        end
    end

    def destroy
        if session[:name]
            session.delete(:name)
        end
    end
end