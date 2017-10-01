class AddAcceptedToTransactions < ActiveRecord::Migration[5.1]
  def change
  	add_column :transactions, :accepted, :boolean, default: false
  end
end
