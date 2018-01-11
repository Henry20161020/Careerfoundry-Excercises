class RenameColorsToUomInProducts < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :colour, :uom
  end
end
