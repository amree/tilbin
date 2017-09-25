class TilsController < ApplicationController
  before_action :set_til, only: [:show, :edit, :update, :destroy]

  def index
    @tils = Til.all
  end

  def show
  end

  def new
    @til = Til.new
  end

  def edit
  end

  def create
    @til = Til.new(til_params)

    if @til.save
      redirect_to @til, notice: "Til was successfully created."
    else
      render :new
    end
  end

  def update
    if @til.update(til_params)
      redirect_to @til, notice: "Til was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @til.destroy
    redirect_to tils_url, notice: "Til was successfully destroyed."
  end

  private

  def set_til
    @til = Til.find(params[:id])
  end

  def til_params
    params.require(:til).permit(
      :title,
      :notes
    )
  end
end
