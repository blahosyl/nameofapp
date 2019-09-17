class RenameColorsInProducts < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :color, :colour
  end
end
