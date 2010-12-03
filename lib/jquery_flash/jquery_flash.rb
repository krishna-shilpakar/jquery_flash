module JqueryFlash
  
    def jquery_flash(options={})
      output = ""
      defaults = { :stay => true }.merge(options)
      [:error, :warning, :info, :notice].each do |key|
        if flash[key]
          output << display_flash(key, flash[key], defaults)
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
        content_tag(:script, jquery_flash(options), nil, false)
    end
end
