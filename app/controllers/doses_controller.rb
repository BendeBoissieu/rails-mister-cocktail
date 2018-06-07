class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def create
  end

  def destroy
  end



end
