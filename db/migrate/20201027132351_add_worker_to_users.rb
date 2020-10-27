class AddWorkerToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :worker, :boolean, default: false
  end
end
