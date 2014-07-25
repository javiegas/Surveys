class BootstrapBreadcrumbsBuilder < BreadcrumbsOnRails::Breadcrumbs::Builder
 
  def render
    return '' unless @elements.size # fail gracefully if no breadcrumbs
    regular_elements = @elements.dup
    active_element = regular_elements.pop
 
    @context.content_tag(:ul, class: 'jv-crumb1') do
      regular_elements.map do |element|
        render_regular_element(element)
      end.join.html_safe + render_active_element(active_element).html_safe
    end
  end
 
  def render_regular_element(element)
    @context.content_tag :li do
      @context.link_to(compute_name(element), compute_path(element))
    end
  end
 
  def render_active_element(element)
    @context.content_tag(:li) do
      @context.link_to(compute_name(element), '#')
    end
  end
end