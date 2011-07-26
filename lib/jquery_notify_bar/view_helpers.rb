module JqueryNotifyBar
  module ViewHelpers
    def include_jquery_notify_bar
      content = 
           javascript_include_tag('jquery.notifyBar.js')
      content << "\n#{stylesheet_link_tag('jquery.notifyBar.css')}".html_safe      
    end

    def jquery_notify_bar(key, msg, opts = {})
      opts.reverse_merge! :flash => :notice, :delay => 2000, :animation_speed => 'normal', :cls => 'notice'
      content_tag :div, msg, :class => [key, " message"], :id => "notice_ #{key}"
      javascript_tag do
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
end