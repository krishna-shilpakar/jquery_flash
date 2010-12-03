require "jquery_flash/jquery_flash"
ActiveSupport.on_load(:action_view) do
  ActionView::Base.send(:include, JqueryFlash )
end