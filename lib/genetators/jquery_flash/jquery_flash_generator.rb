class JqueryFlashGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def add_files
    copy_file "jquery-1.4.2.min.js", "public/javascripts/jquery-1.4.2.min.js"
    copy_file "jquery.flash.js", "public/javascripts/jquery.flash.js"
    copy_file "jquery.flash.css", "public/stylesheets/jquery.flash.css"
  end
end
