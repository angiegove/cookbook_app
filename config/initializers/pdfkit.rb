# config/initializers/pdfkit.rb
PDFKit.configure do |config|
  # config.wkhtmltopdf = '/usr/local/bin/wkhtmltopdf'
  if Rails.env.production?
    config.wkhtmltopdf = Rails.root.join('vendor','bin', 'wkhtmltopdf-amd64').to_s
  else
   config.wkhtmltopdf = '/usr/local/bin/wkhtmltopdf'
  end

  config.default_options = {
    :page_size => 'Legal',
    :print_media_type => true
    # :margin => {:top                => SIZE,                     # default 10 (mm)
    #  :bottom             => SIZE,
    #  :left               => SIZE,
    #  :right              => SIZE}
    # :center             => 'TEXT'
  }
  # Use only if your external hostname is unavailable on the server.
  config.root_url = "http://localhost"
end