class UsersController < ApplicationController
    before_action :require_correct_user, only: [:show, :update]

    def new
    end

    def create
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id
            redirect_to '/events'
        else
            flash[:errors] = user.errors.full_messages
            redirect_to '/'
        end
    end

    def login
        user = User.find_by_email(params[:loginUser][:email])
        if user && user.authenticate(params[:loginUser][:password])
            session[:user_id] = user.id
            redirect_to '/events'
        else
            flash[:errors] = ["Invalid Login Credentials"]
            redirect_to '/'
        end
    end

    def show
    end

    def update
        User.update(params[:id], user_params)
        redirect_to "/users/#{params[:id]}"
    end

    def logout
        session.clear
        redirect_to '/'
    end

    private
    def user_params
        params.require(:user).permit(
                                :first_name,
                                :last_name,
                                :email,
                                :location,
                                :state,
                                :password,
                                :password_confirmation
                                )
    end
end
