class AddStatusToTransactions < ActiveRecord::Migration[5.1]
  def change
  	add_column :transactions, :status, :string, default: 'pending'
  end
end
