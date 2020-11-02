class PetCareBusinessSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :street_address, :city, :state, :zip_code, :image
end
