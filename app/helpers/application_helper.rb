module ApplicationHelper
     def authentication_menu #intelli nav

    links = ""
    if @current_user.present?
      if false # @user_auth.is_admin
        links += "<li>#{link_to('Show Users', users_path)}</li>"
      end
      links += "<li>#{link_to("#{@current_user.name}", user_path(@current_user))}</li>"
      links += "<li>#{link_to('Logout '+ @current_user.name, login_path, :method => 'delete',
                                :confirm => 'Are you sure>') }</li>"

    else
      links += "<li>#{link_to('User Login', login_path) }</li>"

    end

  end

end
