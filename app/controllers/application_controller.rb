class ApplicationController < ActionController::Base

#  def destroy
# #    session[:engineer_id] = nil
#  session[:current_user_id] = user.id
# sign_out @engineer 
# redirect_to root_url, notice: "Logged out!"
#   end

def destroy
    Engineer.find(params[:id]).destroy
    redirect_to action: 'index'
    #redirect_to Engineer_path
  end



end
