# frozen_string_literal: true

module ApplicationHelper
  def flash_class(level)
    case level.to_sym
    when :notice then 'bg-success-subtle'
    when :success then 'bg-success-subtle'
    when :error then 'bg-danger-subtle'
    when :alert then 'bg-danger-subtle'
    end
  end

  def render_turbo_stream_flash_messages
    turbo_stream.prepend 'flash', partial: 'layouts/flash'
  end
end
