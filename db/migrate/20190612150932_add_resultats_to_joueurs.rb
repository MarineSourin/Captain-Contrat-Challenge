class AddResultatsToJoueurs < ActiveRecord::Migration[5.2]
  def change
    add_column :joueurs, :resultat, :string
  end
end
