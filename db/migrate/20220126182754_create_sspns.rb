class CreateSspns < ActiveRecord::Migration[7.0]
  def change
    create_table :sspns do |t|
      t.integer :amount
      t.string :number
      t.boolean :grant
      t.string :ai
      t.boolean :advance
      t.string :item
      t.string :reason
      t.string :season
      t.string :remarks

      t.timestamps
    end
  end
end
