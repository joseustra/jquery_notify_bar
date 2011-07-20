module JqueryNotifyBar
  module ViewHelpers
    def include_jquery_notify_bar
      content = 
           javascript_include_tag('jquery.notifyBar.js')
      content << "\n#{stylesheet_link_tag('jquery.notifyBar.css')}".html_safe      
    end

    def jquery_notify_bar(opts = {})
      opts.reverse_merge! :flash => :notice, :delay => 2000, :animation_speed => 'normal', :cls => 'notice'
      html = ''
      Array.wrap(opts[:flash]).each do |f|
				if html = flash[f]
					opts[:cls] ||= f.to_s
					break
				end
			end
			
			if html.blank?
				''
			else
        javascript_tag do
          %($(function () {
              $.notifyBar({
                html: '#{html}',
                delay: #{opts[:delay]},
                animationSpeed: '#{opts[:animation_speed]}',
                cls: '#{opts[:cls]}'
              });  
            });
          )
        end
      end  
    end
  end
end