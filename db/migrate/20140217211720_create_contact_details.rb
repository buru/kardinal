class CreateContactDetails < ActiveRecord::Migration
  def change
    create_table :contact_details do |t|
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip, null: false
      t.string :country
      t.datetime :birthday
      t.text :description
      t.integer :contactable_id, null: false
      t.string :contactable_type, null: false

      t.timestamps
    end
  end
end
