module ApplicationHelper
  def full_title(page_title = '')
    base_title = 'Snapscan'
    page_title.empty? ? base_title : page_title + ' | ' + base_title
  end

  def page_title(title = nil)
    app_title = 'Snapscan'
    title.empty? || title.nil? ? app_title : title
  end

  def bootstrap_js
    render 'layouts/bootstrap-js'
  end

  def show_navbar_if_user_login
    render 'layouts/navbar' if user_signed_in?
  end

  def show_navbar_unless_root_path
    path = request.path
    if path == '/sign_in' || path == '/sign_up'
      render 'layouts/log-navbar'
    elsif path == '/'
    else
      render 'layouts/navbar'
    end
  end

  def show_menu_toggler_if_user_login
    render 'layouts/menu_toggler' if user_signed_in?
  end

  def redirect_back_or_default(default)
    redirect_to(session[:return_to] || default)
  end
end
