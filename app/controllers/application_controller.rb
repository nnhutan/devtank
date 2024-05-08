class ApplicationController < ActionController::Base
  include Pundit::Authorization
  include LayoutConcern
end
