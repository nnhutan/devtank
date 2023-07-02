# frozen_string_literal: true

# SidebarHelper
module Admin::SidebarHelper
  def icon_tag(icon, color, extra_class = nil)
    content_tag(:i, '', class: "bi bi-#{icon} #{extra_class}", style: "color: #{color};")
  end

  def menu_item(text, path = nil, options = {})
    icon = icon_tag(options[:icon], options[:icon_color], options[:icon_class]) if options[:icon].present?
    text = content_tag(:span, text, class: 'nav-link-text')
    options[:class] = "nav-link #{'active' if current_page?(path)}"
    link_to path, options do
      icon + text
    end
  end
end
