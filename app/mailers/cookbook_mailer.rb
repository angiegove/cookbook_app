class CookbookMailer < ActionMailer::Base
  default from: 'wdi.sydney@gmail.com'

  def cookbook_email(cookbook, theme)
    @theme = theme
    @cookbook = cookbook
    # @cookbook = cookbook
    mail(to: 'ang.gove@gmail.com', subject: 'Cookbook Pdf')
    # mail(to: @email_adresse, subject: @cookbook.subject)
  end

end