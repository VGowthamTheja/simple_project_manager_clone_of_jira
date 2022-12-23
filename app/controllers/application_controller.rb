# frozen_string_literal: true

# Base class that applies through the entire application.
class ApplicationController < ActionController::Base
  before_action :authenticate_employee!
end
