class HealthDeclarationForm < ApplicationRecord
    validates :name, presence: true, length: {minimum:4, maximum:50}
    validates :temperature, presence: true
    validates :symptom, inclusion: { in: [ true, false ], message: "Please choose an option"  }
    validates :suspect_contact, inclusion: { in: [ true, false ], message: "Please choose an option"  }
end
