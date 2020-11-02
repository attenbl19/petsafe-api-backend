class OfferedServiceSerializer < ActiveModel::Serializer
  attributes :id, :catergories, :service_type
  has_one :pet_care_business
end
