module ApplicationHelper
  def full_title(page_title = "")
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def bootstrap_js
    render 'layouts/bootstrap-js'
  end

  def show_navbar_if_user_login
    render 'layouts/navbar' if user_signed_in?
  end
end
