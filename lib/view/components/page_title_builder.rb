class View::Components::PageTitleBuilder < View::Components::Base
  # .page-title
  # .container-fluid
  #   .header-body
  #     .row.py-4.align-items-center
  #       .col-lg-6.col-7
  #         %h5.text-white.d-inline-block.mb-0.fw-semibold Paginated tables
  #         %nav.d-none.d-md-inline-block.ms-md-4
  #           %ol.breadcrumb
  #             %li.breadcrumb-item
  #               %a{href: "#/"}
  #                 %i.bi.bi-house-fill
  #             %li.breadcrumb-item
  #               %a{href: "#/tables"} Tables menu
  #             %li.breadcrumb-item.active
  #               Paginated Tables
  #       .text-right.col-lg-6.col-5
  #         %button.btn.base-button.btn-neutral.btn-sm{type: "button"}
  #           New
  #         %button.btn.base-button.btn-neutral.btn-sm{type: "button"}
  #           Filters
  #
  def render
    options[:class] = ['page-title', options[:class]].compact.join(' ')
    content_tag(:div, options) do
      content_tag(:div, class: 'container-fluid') do
        content_tag(:div, class: 'header-body') do
          content_tag(:div, capture(self, &block), class: 'row py-4 align-items-center')
        end
      end
    end
  end

  def info(&block)
    return unless block_given?

    content_tag(:div, capture(&block), class: 'col-lg-6 col-7')
  end

  def title(title, &block)
    if block_given?
      capture(&block)
    else
      content_tag(:h5, title, class: 'text-white d-inline-block mb-0 fw-semibold')
    end
  end

  def breadcrumb(&block)
    return unless block_given?

    content_tag(:nav, class: 'd-none d-md-inline-block ms-md-4') do
      content_tag(:ol, class: 'breadcrumb') do
        capture(&block)
      end
    end
  end

  def breadcrumb_item(title, icon: nil, path: nil)
    if icon.present?
      content =  content_tag(:i, nil, class: "bi bi-#{icon}")
      content += " #{title}" if title.present?
    else
      content = title
    end

    content_tag(:li, class: "breadcrumb-item #{path.blank? ? 'active' : nil}") do
      path.blank? ? content : link_to(path) { content }
    end
  end

  def actions(&block)
    return unless block_given?

    content_tag(:div, capture(&block), class: 'text-end col-lg-6 col-5')
  end
end
