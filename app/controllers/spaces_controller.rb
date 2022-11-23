class SpacesController < ApplicationController
  def index
    @spaces = Space.all
    @spaces = policy_scope(Space)
  end

  def new
    @space = Space.new
    authorize @space
  end
end
