module JqueryFlash
  
    def jquery_flash(options={})
      output = ""
      defaults = { :stay => true, :script_tag => true, :msg => '' }.merge(options)
      [:error, :warning, :info, :notice].each do |key|
        msg = flash[key] || defaults[:msg]
        if msg
          output << display_flash(key, msg, defaults)
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
        return content_tag(:script, jquery_flash(options), nil, false) if options[:script_tag].present?
        jquery_flash(options)
    end
end
