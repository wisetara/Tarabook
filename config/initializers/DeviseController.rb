DeviseController.class_eval do
  def resource_params
    unless params[user].blank?
      params.require(user).permit(:email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :profile_name)
    end
  end
end