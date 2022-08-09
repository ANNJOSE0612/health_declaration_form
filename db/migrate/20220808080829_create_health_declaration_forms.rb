class CreateHealthDeclarationForms < ActiveRecord::Migration[7.0]
  def change
    create_table :health_declaration_forms do |t|
      t.string :name
      t.boolean :symptom
      t.boolean :suspect_contact
      t.text :mobile_number

      t.timestamps
    end
  end
end
