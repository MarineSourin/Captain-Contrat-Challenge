class AddReferencesToJoueurs < ActiveRecord::Migration[5.2]
  def change
    add_reference :joueurs, :arme, foreign_key: true
    add_reference :joueurs, :bouclier, foreign_key: true
  end
end
