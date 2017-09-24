class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.integer :poster_id
      t.string :category
      t.string :location
      t.datetime :expiration_date
      t.boolean :offer, default: false
      t.boolean :request, default: false

      t.timestamps
    end
  end
end
#guitar_lesson = Post.create(poster_id: 2, name: "offer_name", category: "music", location: "boston", expiration_date:'2017-01-30')