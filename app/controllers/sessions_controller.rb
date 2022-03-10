class SessionsController < ApplicationController
    def create
        # @aster = email:loging_params[:email]
        # puts `test {#@aster}`
        @user = User.find_by(email:loging_params[:email])
        if @user && @user.authenticate(loging_params[:password])
            session[:user_id] = @user.id #log user in, keep track of user
            redirect_to '/dashboard'
        else
            flash.now.alert = "Email or password is invalid"
            redirect_to '/'
       end
   end
    private
    def loging_params
        params.require(:login).permit(:email, :password)
    end
    #adding destroy to logout other method 
    def destroy
        session.delete :user_id
    end 
end

# class SessionsController < ApplicationController
#     include CurrentUserConcern
    
#     def create
#       user = User.find_by(email: params["user"]["email"]).try(:authenticate, params["user"]["password"])
  
#       if user
#         session[:user_id] = user.id 
#         render json: {
#           status: :created,
#           logged_in: true,
#           user: user
#         }
#       else
#         render json: { status: 401 }
#       end
#     end
#     def logged_in
#         if @current_user
#           render json: {
#             logged_in: true,
#             user: @current_user
#           }
#         else
#           render json: {
#             logged_in: false
#           }
#         end
#       end
    
#       def logout
#         reset_session
#         render json: { 
#           status: 200, 
#           logged_out: true 
#         }
#       end
#     end  
