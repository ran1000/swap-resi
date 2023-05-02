class CookiesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index consent policy]
  def index

  end

  def consent
    # 1. Ask User for consent and store in a variable
    # 2. Track Everything if consnt is true
    # 3. Remove cookie banner
  end

  def policy
  end
end
