class ApplicationController < ActionController::Base
  include Knock::Authenticable
  skip_before_action :verify_authenticity_token
  protect_from_forgery with: :null_session
  before_action :authenticate_user
end
