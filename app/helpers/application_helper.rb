module ApplicationHelper
     def authentication_menu #intelli nav

    links = ""
    if @user_authenticated.present?
      if false # @user_authenticated.is_admin
        links += "<li>#{link_to('Show Users', users_path)}</li>"
      end
      links += "<li>#{link_to("#{@user_authenticated.name}", user_path(@user_authenticated))}</li>"
      links += "<li>#{link_to('Logout '+ @user_authenticated.name, login_path, :method => 'delete',
                                :confirm => 'Are you sure>') }</li>"

    else
      links += "<li>#{link_to('User Login', login_path) }</li>"

    end

  end

end
