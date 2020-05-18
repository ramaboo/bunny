module BulmaHelper
  def icon(name)
    content_tag(:span, content_tag(:i, '', class: name), class: 'icon')
  end
end
