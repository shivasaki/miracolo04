class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionHelper
  include ContentsHelper
end
