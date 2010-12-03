module JqueryFlash
  
    def jquery_flash(options={})
      output = ""
      defaults = { :stay => true}.merge(options)
      if defaults[:message]
        output << display_flash(:notice, defaults[:message], defaults)
      else
         [:error, :warning, :info, :notice].each do |key|
            if flash[key]
              output << display_flash(key, flash[key], defaults)
            end
          end
      end
     output
    end
  
    def display_flash(type, text, options={})
      options[:text] = text
      options[:type] = type
      %(jQuery.noticeAdd(#{options.to_json});\n)
    end
  
      def jquery_flash_script(options={})
        return jquery_flash(options) if options[:script_tag] == false
        return content_tag(:script, jquery_flash(options), nil, false)
    end
end
