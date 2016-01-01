module ApplicationHelper

def datetime_select(object_name, method, options = {}, html_options = {})
  Tags::DatetimeSelect.new(object_name, method, self, options, html_options).render
end
  
end
