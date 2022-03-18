module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  def logged_in?
    current_user.present?
  end
  
  def choose_new
    if action_name == 'new' 
      sessions_path
    end
  end  
end
