class Api::RegistrationsController < Devise::RegistrationsController
  respond_to :json
  # POST /resource
  def create
    build_resource
    if resource.save
      if resource.active_for_authentication?
        render :json => {:success=>true,:user => resource}
      else
        render :json => {:success=>false,:errors => resource.errors}
      end
    else
      render :json => {:success=>false,:errors => resource.errors}
    end
  end

end
