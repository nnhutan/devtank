# frozen_string_literal: true

# LayoutConcern: for determining which layout to use
module LayoutConcern
  extend ActiveSupport::Concern

  def layout_by_domain
    return 'admin' if request.subdomain == 'admin'

    'application'
  end
end
