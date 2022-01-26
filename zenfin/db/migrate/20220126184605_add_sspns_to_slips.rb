class AddSspnsToSlips < ActiveRecord::Migration[7.0]
  def change
    add_column :slips, :sspn_id, :integer
  end
end
