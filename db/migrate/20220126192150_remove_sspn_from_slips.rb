class RemoveSspnFromSlips < ActiveRecord::Migration[7.0]
  def change
    remove_column :slips, :sspn, :string
  end
end
