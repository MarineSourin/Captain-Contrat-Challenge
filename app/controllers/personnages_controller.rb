class PersonnagesController < ApplicationController
  before_action :set_personnage, only: [:show]

  def index
    @personnages = Personnage.all
  end

  def show
  end

  def new
    @personnage = Personnage.new
  end

  def create
    @personnage = Personnage.new(personnage_params)
    if @personnage.save
      redirect_to personnage_path(@personnage)
    else
      render :new
    end
  end

  private

  def set_personnage
    @personnage = Personnage.find(params[:id])
  end

  def personnage_params
    params.require(:personnage).permit(:nom, :vie, :attaque)
  end
end
