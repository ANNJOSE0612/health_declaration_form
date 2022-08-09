class AddTemperatureToHealthDeclarationForm < ActiveRecord::Migration[7.0]
  def change
    add_column :health_declaration_forms, :temperature, :float
  end
end
