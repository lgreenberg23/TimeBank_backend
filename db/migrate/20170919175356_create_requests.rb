class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.string :name
      t.integer :poster_id
      t.string :category
      t.string :location
      t.datetime :expiration_date

      t.timestamps
    end
  end
end
