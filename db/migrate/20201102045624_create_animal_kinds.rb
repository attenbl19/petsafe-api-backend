class CreateAnimalKinds < ActiveRecord::Migration[6.0]
  def change
    create_table :animal_kinds do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :pet_care_business, null: false, foreign_key: true
      t.string :kind

      t.timestamps
    end
  end
end
