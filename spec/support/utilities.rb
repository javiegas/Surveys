def full_title(page_title)
  base_title = "WHO HIV Resistance Database v0.1"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end