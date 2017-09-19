class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.integer :poster_id
      t.string :category
      t.string :location
      t.datetime :expiration_date

      t.timestamps
    end
  end
end


#guitar_lesson = Offer.create(poster_id: 2, category: "music", location: "boston", expiration_date:'2017-01-30')