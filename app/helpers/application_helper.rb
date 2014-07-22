module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "WHO HIV Resistance Database v0.1"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def breadcrumb_str options
    items = []
    char_sep = "»".html_safe
    if(options.size !=0 )
      items <<  content_tag(:li , :class => "active") do
        link_to("Home", root_path) + content_tag(:span, char_sep, :class => "divider")
      end
      options.each do |option|
        option.each do |key, value|
          if !value.nil?
          items << content_tag(:li) do            
                                            link_to(key, value) + content_tag(:span, char_sep, :class => "divider")
          end
          else
          items << content_tag(:li, key, :class =>"active")
          end
        end
      end
    else
      items << content_tag(:li, "Home", :class => "active")
    end

    items.join("").html_safe
  end

  def breadcrumb options
    content_tag(:ul, breadcrumb_str(options), :class => "breadcrumb")
  end

  def tag_row(options ={}, &block)
          options = self.merge_options(options, :class, "div-row")
          #output = with_output_buffer(&block)
          #content_tag(:div, output, options)
          content_tag(:div, options, &block)
        end
  
    
end
