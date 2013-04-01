module PagesHelper
  def current_section(section_name)
    "current" if @section == section_name 
  end

  def google_map_for(query, opts={})
    query.gsub!(/\s/,'+')
    content_tag(:iframe, nil, 
      { width: "400", height: "320", frameborder:"0", 
        scrolling:"no", marginheight: "0", marginwidth: "0",
        src:"https://maps.google.es/maps?q=#{query}&fb=1&output=embed"}.merge(opts))
  end
end
