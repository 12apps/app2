class AddDomainsTable < ActiveRecord::Migration
  def change
    create_table :domains do |t|
      t.string :domain_name, null: false
      t.string :owner_email, null: false
    end
  end
end
