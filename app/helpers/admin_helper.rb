module AdminHelper
  def render_pagination(pagy)
    select = content_tag :div, class: 'pagination-select', data: { controller: 'components--vendors--pagy' } do
      pagy_items_selector_js(pagy).html_safe
    end
    nav = content_tag :div, class: 'pagy d-flex justify-content-between align-items-center gap-3' do
      concat select
      concat pagy_bootstrap_nav(pagy).html_safe
    end
    info = content_tag :div, class: 'pagination-info' do
      pagy_info(pagy).html_safe
    end

    content_tag :div, class: 'pagy d-flex justify-content-between align-items-center' do
      concat info
      concat nav
    end
  end
end
