class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.string :poster_id
      t.string :category
      t.string :location

      t.timestamps
    end
  end
end
