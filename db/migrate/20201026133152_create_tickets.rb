class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :issue_type
      t.integer :status
      t.text :comment
      

      t.timestamps
    end
  end
end

