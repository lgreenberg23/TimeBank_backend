class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.integer :poster_id
      t.string :category
      t.string :location
      t.string :description
      t.datetime :expiration_date
      t.boolean :offer, default: false
      t.boolean :request, default: false

      t.timestamps
    end
  end
end
