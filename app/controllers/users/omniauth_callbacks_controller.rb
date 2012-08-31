class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def github
    provider_session(request.env["omniauth.auth"])
  end

  private

  def provider_session(auth)
    origin = request.env["omniauth.origin"]

    authentication = Authentication.find_by_provider_and_uid(auth["provider"], auth["uid"])

    if authentication
      authentication.update_attribute("token", auth["credentials"]["token"])
      @user = authentication.user
    else
      @user = User.create_with_omniauth(auth)
    end

    respond_to do |format|
      format.html { 
        flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => auth["provider"].titleize
        sign_in_and_redirect @user, :event => :authentication 
      }
    end
  end

end
