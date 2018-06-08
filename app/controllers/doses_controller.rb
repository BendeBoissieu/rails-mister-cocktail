class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
    @dose.cocktail = @cocktail
  end

  def create
         @cocktail = Cocktail.find(params[:cocktail_id])
        @dose = Dose.new(dose_params)

        @dose.cocktail = @cocktail
        @dose.save
        redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.find(params[:id])

    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end



end
