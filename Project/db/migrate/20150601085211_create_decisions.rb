class CreateDecisions < ActiveRecord::Migration
  def change
    create_table :decisions do |t|
    	t.string :name_1
    	t.integer :vote_1, :default => 16
    	t.string :name_2
    	t.integer :vote_2, :default => 14
    	t.string :category
    	t.string :description
      t.integer :user_id
      t.date :date
      t.text :array_users
      t.timestamps null: false
    end
  end
end
