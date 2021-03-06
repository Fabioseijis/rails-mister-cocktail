class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i[show edit update destroy]

  def index
    @cocktail = Cocktail.all
  end

  def show; end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    redirect_to cocktail_path(@cocktail)
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def set_pet
    @cocktail = Cocktail.find(params[:id])
  end
end
