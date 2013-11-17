module ApplicationHelper
     def authentication_menu #intelli nav

    links = ""
    if @user_auth.present?
      if false # @user_authenticated.is_admin
        links += "<li>#{link_to('Show Users', users_path)}</li>"
      end
      links += "<li>#{link_to("#{@user_auth.name}", user_path(@user_auth))}</li>"
      links += "<li>#{link_to('Logout '+ @user_auth.name, login_path, :method => 'delete',
                                :confirm => 'Are you sure>') }</li>"

    else
      links += "<li>#{link_to('User Login', login_path) }</li>"

    end

  end

end
