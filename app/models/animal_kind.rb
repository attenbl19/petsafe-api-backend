class AnimalKind < ApplicationRecord
  belongs_to :user
  belongs_to :pet_care_business
end
