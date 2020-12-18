class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :contract
      t.string :name
      t.string :phone_model
      t.string :workplace
      t.integer :paid_amount
      t.integer :remaining_amount
      t.integer :duration
      t.date :pay_date
      t.integer :phone_number

      t.timestamps
    end
  end
end
