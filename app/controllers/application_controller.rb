class ApplicationController < ActionController::Base
  include SessionsHelper
  include UsersHelper
  include RatingsHelper

  protect_from_forgery
end

