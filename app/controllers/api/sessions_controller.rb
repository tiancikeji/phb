class Api::SessionsController < Devise::SessionsController
  respond_to :json
  # POST /resource/sign_in
  def create
    resource = User.find_for_database_authentication(:email => params[:user][:email])
    if !resource.nil? and resource.valid_password?(params[:user][:password])
      render :json => {:success=>true,:user=>resource}
    else
      render :json => {:success=>false,:errors=>resource.errors}
    end
  end

end
