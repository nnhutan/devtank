# frozen_string_literal: true

# ApplicationHelper
module ApplicationHelper
  include Pagy::Frontend

  def flash_class(level)
    lookup = {
      notice: 'bg-success-subtle',
      success: 'bg-success-subtle',
      error: 'bg-danger-subtle',
      alert: 'bg-danger-subtle'
    }

    lookup[level.to_sym]
  end

  def render_turbo_stream_flash_messages
    turbo_stream.prepend 'flash', partial: 'layouts/flash'
  end
end
