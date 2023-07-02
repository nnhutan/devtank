# frozen_string_literal: true

# AdminController
class AdminController < ApplicationController
  include Pagy::Backend
  layout 'admin'
end
