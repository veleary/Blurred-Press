module ApplicationHelper
  def current_user
    session[:user]
  end

  def user_content(&block)
    capture(&block) if current_user
  end
end