class AddVictimAndWorkerToTickets < ActiveRecord::Migration[6.0]
  def change
    add_reference :tickets, :victim, null: false
    add_reference :tickets, :worker, null: false
    
    add_foreign_key :tickets, :users, column: :victim_id
    add_foreign_key :tickets, :users, column: :worker_id
  end
end
