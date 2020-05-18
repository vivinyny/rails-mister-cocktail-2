class DosesController < ApplicationController
before_action :set_dose, only: [:new, :create, :destroy]

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.save
  # no need for app/views/doses/create.html.erb
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktails_path
  end

  private

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.require(:doses).permit(:description, :cocktail, :ingredient)
  end
end
