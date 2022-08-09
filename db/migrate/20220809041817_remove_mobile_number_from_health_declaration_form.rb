class RemoveMobileNumberFromHealthDeclarationForm < ActiveRecord::Migration[7.0]
  def change
    remove_column :health_declaration_forms, :mobile_number, :text
  end
end
