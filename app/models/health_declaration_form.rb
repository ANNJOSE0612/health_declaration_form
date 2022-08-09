class HealthDeclarationForm < ApplicationRecord
    validates :name, presence: true, length: {minimum:4, maximum:50}
    validates :temperature, presence: true
end
