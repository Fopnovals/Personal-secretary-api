class ApplicationController < ActionController::API
  # before_action :allow_cross_domain_ajax
  # def allow_cross_domain_ajax
  #   headers['Access-Control-Allow-Origin'] = '*'
  #   headers['Access-Control-Request-Method'] = 'POST, OPTIONS'
  # end
  #
  # protect_from_forgery with: :exception
  include SessionsHelper
end
