class AnimalKindSerializer < ActiveModel::Serializer
  attributes :id, :kind
  has_one :user
  has_one :pet_care_business
end
