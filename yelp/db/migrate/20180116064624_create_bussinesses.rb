class CreateBussinesses < ActiveRecord::Migration
  def change
    create_table :bussinesses do |t|
      t.string :title
      t.string :description
      t.string :url
    end
  end
end
