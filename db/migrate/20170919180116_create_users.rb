class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :hours_banked, default: 0
      t.string :password_digest
      t.boolean "poster", default: false
      t.boolean "acceptor", default: false

      t.timestamps
    end
  end
end


# Lauren = User.create(name: "Lauren", email: "lalala", password_digest: "12345") 
# rachel = User.create(name: "Rachel", email: "rarara", password_digest: "12345") 
# adina = User.create(name: "Adina", email: "aaaaaa", password_digest: "12345") 
# rebecca = User.create(name: "Rebecca", email: "rbrbrb", password_digest: "12345")