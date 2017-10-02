class AddMessageToTransactions < ActiveRecord::Migration[5.1]
  def change
  	add_column :transactions, :message, :string
  end
end
