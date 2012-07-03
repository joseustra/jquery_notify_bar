require "jquery_notify_bar/view_helpers"

module JqueryNotifyBar
  class Engine < Rails::Engine
    # Adds the ViewHelpers into ActionView::Base
    initializer "jquery_notify_bar.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end