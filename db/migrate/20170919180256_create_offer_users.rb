class CreateOfferUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :offer_users do |t|
      t.boolean :verified, default: false
      t.integer :offer_id
      t.integer :acceptor_id
      t.integer :hours

      t.timestamps
    end
  end
end
