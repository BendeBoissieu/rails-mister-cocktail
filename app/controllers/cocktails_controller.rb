class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def edit
    @cocktail = Cocktail.find(params[:id])

    @dose=Dose.new
    @ingredient=Ingredient.all

    @dose.cocktail = @cocktail

  end

  def new
    @cocktail = Cocktail.new


  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to edit_cocktail_path(@cocktail)
    else
      render "new"
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path

  end

    private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end


end
