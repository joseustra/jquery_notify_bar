require 'jquery_notify_bar/view_helpers'
module JqueryNotifyBar
  class Railtie < Rails::Railtie
    initializer "jquery_notify_bar.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end