class CookiesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index consent policy]
  def index
  end

  def consent
    session[:cookie_consent] = params[:consent]
    if session[:cookie_consent] == "true"
      render turbo_stream: turbo_stream.remove(:cookie_consent)
    end
  end

  def policy
  end
end
