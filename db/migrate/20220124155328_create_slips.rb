class CreateSlips < ActiveRecord::Migration[7.0]
  def change
    create_table :slips do |t|
      t.integer :number
      t.integer :user_id
      t.datetime :issue_date
      t.string :payee
      t.integer :amount
      t.string :supplement
      t.string :sspn
      t.string :account
      t.integer :year
      t.boolean :reimbursement

      t.timestamps
    end
  end
end
