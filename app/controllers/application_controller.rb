class ApplicationController < ActionController::Base
  include RatingsHelper

  protect_from_forgery
end

