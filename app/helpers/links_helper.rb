module LinksHelper
  def link_to_policy(policy, name, options = nil, html_options = {})
    policy ? link_to(name, options, html_options) : name
  end

  def link_to_phone(number, html_options = {})
    link_to(number.phony_formatted, "tel:#{number}", html_options)
  end
end
