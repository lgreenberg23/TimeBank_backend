class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.boolean :verified, default: false #transfer could take the place of this
      t.integer :post_id
      t.integer :contacter_id
      t.integer :hours

      t.timestamps
    end
  end
end
