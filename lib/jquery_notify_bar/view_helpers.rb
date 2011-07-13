module JqueryNotifyBar
  module ViewHelpers
    def include_jquery_notify_bar
      "<link rel='stylesheet' href='/stylesheets/jquery.notifyBar.css?' type='text/css' media='screen' />".html_safe
      "<script src='/javascripts/jquery.notifyBar.js' type='text/javascript'></script>".html_safe
    end

    def jquery_notify_bar(opts = {})
      opts.reverse_merge! :flash => :notice, :delay => 2000, :animation_speed => 'normal', :close => false, :cls => 'notice'
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