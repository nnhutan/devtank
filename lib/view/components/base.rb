class View::Components::Base
  include ActionView::Helpers::TagHelper
  include ActionView::Helpers::NumberHelper
  include ActionView::Helpers::AssetTagHelper
  include ActionView::Context
  include Rails.application.routes.url_helpers

  def initialize(view_context, options = {}, &block)
    @view_context = view_context
    @options = options
    @block = block
  end

  delegate :simple_form_for, to: :view_context
  delegate :panel, to: :view_context
  delegate :fa_icon, to: :view_context
  delegate :link_to, to: :view_context
  delegate :capture, to: :view_context
  delegate :concat, to: :view_context

  private

  attr_reader :options, :view_context, :block

  def render_view(*args)
    view_context.render(*args)
  end
end
