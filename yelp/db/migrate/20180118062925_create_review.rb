class CreateReview < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :business_id
      t.text :content
      t.timestamps
    end
  end
end
