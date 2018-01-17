class RenameBusiness < ActiveRecord::Migration
  def change
    rename_table :bussinesses, :businesses
  end
end
