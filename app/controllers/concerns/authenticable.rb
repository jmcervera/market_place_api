module Authenticable

  # Devise methods overwrites
  def current_user
    @current_user ||= User.find_by(auth_token: request.headers['Authorization'])
  end

  def authenticate_with_token!
  	if current_user.nil?
	    render json: { errors: "Not authenticated" }, status: :unauthorized
	  end
  end
end
