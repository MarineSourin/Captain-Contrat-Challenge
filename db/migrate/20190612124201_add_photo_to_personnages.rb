class AddPhotoToPersonnages < ActiveRecord::Migration[5.2]
  def change
    add_column :personnages, :photo, :string
  end
end
