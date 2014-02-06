class ApiUsersController < ApplicationController
    #w GET /
  def index
    @apiusers = ApiUser.all
    
  end
  
  def show
    @apiuser = ApiUser.find(params[:id])
    
  end
  
  def new
    @apiuser_to_create = ApiUser.new
  end
  
  def destroy
  @apiuser = ApiUser.find(params[:id])
  @apiuser.destroy
  redirect to api_users_path
    
  end
  
  
  def create
    @apiuser_to_create = ApiUser.new(api_user_params)
    
      if @apiuser_to_create.save
        redirect_to api_users_path
      else
        render :action => "new"
      end
    
  end
  
  private 
  
  def api_user_params
    params.require(:api_user).permit(:strEmail,:strApiKey)
    
  end
  
end
