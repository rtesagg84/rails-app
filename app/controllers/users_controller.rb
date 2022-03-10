class UsersController < ApplicationController
    def index
        @user = User.all
    end

    def new
        @user = User.new
    end

    def show # this helps for outhentication on front end
        user =User.find_by_id(session[:user_id])
        if user 
        render jeson: user,status: :ok
        else
            render json: "Not authenticated", status: :unauthorized
        end
    end

    def create
       @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id #helps the user login
            redirect_to '/', notice: "Thank you for signing up!"
        else 
            flash[:register_errors] = @user.errors.full_messages
            redirect_to '/'
        end
    end
    
    def destroy
        @user.destroy
        session[:user_id] = nil
        redirect_to root_path
      end

    private
    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
    
    def catch_not_found(e)
        Rails.logger.debug("We had a not found exception.")
        flash.alert = e.to_s
        redirect_to '/'
  end
  
end
