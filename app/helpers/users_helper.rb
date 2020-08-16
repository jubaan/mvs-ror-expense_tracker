module UsersHelper
  def user_name
    name = current_user.name.downcase.capitalize
    name.length > 7 ? 'Welcome' : "Hi, #{name}!"
  end

  # rubocop:disable Layout/LineLength
  # rubocop:disable Lint/UselessAssignment
  def show_user_profile_image
    if current_user.image.url.nil?
      render html:
               "<img src='https://i2.wp.com/www.winhelponline.com/blog/wp-content/uploads/2017/12/user.png?fit=256%2C256&quality=100&ssl=1' class='rounded-circle mr-3 border' width= '150px' height= '150px'>"
                 .html_safe
    else
      render = image_tag current_user.image.url, width: '150px', height: '150px', class: 'rounded-circle mr-3'
    end
  end

  # rubocop:enable Layout/LineLength
  # rubocop:enable Lint/UselessAssignment
end
