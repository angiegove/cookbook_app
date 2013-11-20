# config/initializers/pdfkit.rb
PDFKit.configure do |config|
  config.wkhtmltopdf = '/usr/local/bin/wkhtmltopdf'
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