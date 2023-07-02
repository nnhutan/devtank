module Admin::PageTitleHelper
  def page_title(options = {}, &block)
    content_for(:page_title) { ::View::Components::PageTitleBuilder.new(self, options, &block).render }
  end
end
