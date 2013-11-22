module ApplicationHelper
  def authentication_menu #intelli nav
    links = ""
    if @current_user.present?
      if false # @user_auth.is_admin
        links += "<li>#{link_to('Show Users', users_path)}</li>"
      end
      links += "<li class='nav_user_name'>#{link_to("Welcome #{@current_user.name}", root_path)}</li>"
      links += "<li>#{link_to('Logout ', login_path, :method => 'delete',
                                :confirm => 'Are you sure you want to log out?') }</li>"
    else
      links += "<li>#{link_to('Login', login_path) }</li>"
    end
  end


  def hide_na(u)
    if u == 'N/A'
      ''
    else
      u
    end
  end

end
