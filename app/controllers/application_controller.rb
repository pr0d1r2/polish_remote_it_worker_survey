class ApplicationController < ActionController::Base

  protect_from_forgery

  before_filter :set_identity_token_param

  def cookie_identity_token
    cookies[:polish_remote_it_worker_survey_identity_token] ||= Identity.create_and_return_token
  end

  def session_identity_token
    session[:identity_token] ||= Identity.get_token(cookie_identity_token)
  end

  def set_identity_token_param
    params[:identity_token] = session_identity_token
  end

end
