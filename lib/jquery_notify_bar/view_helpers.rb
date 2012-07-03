module JqueryNotifyBar
  module ViewHelpers
    def jquery_notify_bar_assets
      content = javascript_include_tag('jquery.notify_bar.js')
      content += stylesheet_link_tag('jquery.notify_bar.css')
      content.html_safe
    end
    
    def jquery_notify_bar(flash, opts = {})
      content = ''
      unless flash.blank?
        flash.each do |key, msg|
          opts.reverse_merge! :flash => :notice, :delay => 2000, :animation_speed => 'normal', :cls => (key == :notice ? "success" : "error")          
          content += javascript_tag do
            %($(function () {
              $.notifyBar({
                html: '#{msg}',
                delay: #{opts[:delay]},
                animationSpeed: '#{opts[:animation_speed]}',
                cls: '#{opts[:cls]}'
              });
            });)
          end
        end
      end
      content.html_safe
    end
  end
end