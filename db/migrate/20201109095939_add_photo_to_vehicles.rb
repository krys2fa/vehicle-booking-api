class AddPhotoToVehicles < ActiveRecord::Migration[6.0]
  def change
    add_column :vehicles, :photo, :string
  end
end
