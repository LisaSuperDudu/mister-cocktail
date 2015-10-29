class DosesController < ApplicationController


  before_action :set_cocktail

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(params_dose)
    @dose.cocktail = @cocktail
      if @dose.valid?
        @dose.save
        redirect_to cocktail_path(@cocktail)
      else
        render :new
      end
  end

  private
  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def params_dose
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
