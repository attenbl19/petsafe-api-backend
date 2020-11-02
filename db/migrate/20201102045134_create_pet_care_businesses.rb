class CreatePetCareBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :pet_care_businesses do |t|
      t.string :title
      t.string :description
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :image

      t.timestamps
    end
  end
end
