class SpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show index]
  before_action :set_space, only: %i[show]

  def index
    if params[:query].present?
      @spaces = Space.where("name ILIKE ?", "%#{params[:query]}%")
      @spaces = policy_scope(@spaces)
    else
      @spaces = Space.all
      @spaces = policy_scope(Space)
    end
  end

  def show
    authorize @space
  end

  def new
    @space = Space.new
    authorize @space
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    authorize @space
    if @space.save!
      redirect_to spaces_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    set_space
    authorize @space
    @space.destroy!
    redirect_to spaces_path, status: :see_other
  end

  private

  def set_space
    @space = Space.find(params[:id])
  end

  # Strong params
  def space_params
    params.require(:space).permit(:name, :description, :daily_cost, photos: [])
  end
end
