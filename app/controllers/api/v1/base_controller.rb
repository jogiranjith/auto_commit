require "#{Rails.root}/lib/errors/errors.rb"

class Api::V1::BaseController < ApplicationController
  rescue_from Errors::Error, with: :render_error
  protect_from_forgery with: :null_session, only: Proc.new { |c| c.request.format.json? }
  before_filter :set_default_response_format, :authenticate_user_from_token!

  layout false

  private

  def render_error(error)
    render(json: error, status: error.status)
  end

  def set_default_response_format
    request.format = :json
  end

  def authenticate_user_from_token!
    user_token = params[:auth_token].presence
    user = user_token && User.find_by_authentication_token(user_token.to_s)

    if user
      # Notice we are passing store false, so the user is not
      # actually stored in the session and a token is needed
      # for every request. If you want the token to work as a
      # sign in token, you can simply remove store: false.
      sign_in user, store: false
    end
  end
end
