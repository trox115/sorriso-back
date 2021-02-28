class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  before_action :cors_set_access_control_headers
  acts_as_token_authentication_handler_for User, except: [:create], fallback: :exception
  def cors_preflight_check
    return unless request.method == 'OPTIONS'

    cors_set_access_control_headers
    render json: {}
  end

  protected

  def cors_set_access_control_headers
    response.headers['Cache-Control'] = 'max-age=3'
    response.headers['Access-Control-Allow-Origin'] = 'https://designdosorriso.netlify.app'
    #  response.headers['Access-Control-Allow-Origin'] = 'http://localhost:3000'
    response.headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, PATCH, DELETE, OPTIONS'
    response.headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token, ' \
      'Auth-Token, Email, X-User-Token, X-User-Email, x-xsrf-token'
    response.headers['Access-Control-Max-Age'] = '1'
    response.headers['Access-Control-Allow-Credentials'] = true
  end
end
