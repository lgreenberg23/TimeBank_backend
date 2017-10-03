class AddHoursloggedToTransactions < ActiveRecord::Migration[5.1]
  def change
  	add_column :transactions, :hours_logged, :integer
  end
end
