class CombatsController < ApplicationController
  def show
    @combat = Combat.find(params[:id])
  end

  def new
    @combat = Combat.new
    2.times { @combat.joueurs.build }
  end

  def create
    @combat = Combat.new(combat_params)
    if @combat.save
      deroulement_combat(@combat)
      redirect_to combat_path(@combat)
    else
      render :new
    end
  end


  private

  def combat_params
    params.require(:combat).permit(joueurs_attributes: [:id, :personnage_id, :arme_id, :bouclier_id])
  end

  def deroulement_combat(combat)
    joueurs = ordre_attaque(combat)

    joueur1_vie = joueurs[:joueur1].personnage.vie
    joueur2_vie = joueurs[:joueur2].personnage.vie

    while joueur1_vie.positive?
      joueur2_vie -= (joueurs[:joueur1].personnage.attaque / 2)
      break
      if joueur2_vie <= 0
        joueur1_vie -= (joueurs[:joueur2].personnage.attaque / 2)
      end
    end
    resultat(joueurs, joueur1_vie, joueur2_vie)
  end

  def ordre_attaque(combat)
    joueurs = combat.joueurs
    joueur1 = joueurs.sample
    joueur2 = joueurs.reject { |joueur| joueur == joueur1 }
    return { joueur1: joueur1, joueur2: joueur2.first }
  end

  def resultat(joueurs, joueur1_vie, joueur2_vie)
    if joueur1_vie <= 0
      joueurs[:joueur1].result = 'Perdant 👎🏻'
      joueurs[:joueur2].result = 'Vainqueur 🏆'
    elsif joueur2_vie <= 0
      joueurs[:joueur1].result = 'Vainqueur 🏆'
      joueurs[:joueur2].result = 'Perdant 👎🏻'
    end
    joueurs[:joueur1].save
    joueurs[:joueur2].save
  end
end
