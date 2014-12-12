class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains do |t|
      t.string :domain_name, null: false
      t.string :owner_email, null: false

      t.timestamps
    end
  end
end
