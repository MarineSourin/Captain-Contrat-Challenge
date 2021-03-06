class PersonnagesController < ApplicationController
  before_action :set_personnage, only: [:show, :edit, :update, :destroy]

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

  def edit
  end

  def update
    if @personnage.update(personnage_params)
      redirect_to personnage_path(@personnage)
    else
      render :edit
    end
  end

  def destroy
    @personnage.destroy
    redirect_to personnages_path
  end

  private

  def set_personnage
    @personnage = Personnage.find(params[:id])
  end

  def personnage_params
    params.require(:personnage).permit(:nom, :vie, :attaque, :photo)
  end
end
