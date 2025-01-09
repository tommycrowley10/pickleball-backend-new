class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, unless: -> { request.format.json? }
  allow_browser versions: :modern
end
