class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]
  def home
  end

  def messages
  end

  def profile
  end

  def map
  end
end
