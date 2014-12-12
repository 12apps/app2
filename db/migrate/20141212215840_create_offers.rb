class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.text :offer, null: false
    end
  end
end
