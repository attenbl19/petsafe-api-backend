class CreateOfferedServices < ActiveRecord::Migration[6.0]
  def change
    create_table :offered_services do |t|
      t.belong_to :catergories
      t.belongs_to :pet_care_business, null: false, foreign_key: true
      t.string :service_type

      t.timestamps
    end
  end
end
