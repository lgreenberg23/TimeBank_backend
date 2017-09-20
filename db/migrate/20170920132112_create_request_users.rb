class CreateRequestUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :request_users do |t|
      t.boolean :verified, default: false
      t.integer :request_id
      t.integer :acceptor_id
      t.integer :hours

      t.timestamps
    end
  end
end
