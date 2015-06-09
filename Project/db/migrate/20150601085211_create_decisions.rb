class CreateDecisions < ActiveRecord::Migration
  def change
    create_table :decisions do |t|
    	t.string :name_1
    	t.integer :vote_1
    	t.string :image_1
    	t.string :name_2
    	t.integer :vote_2
    	t.string :image_2
    	t.string :category
    	t.string :description
      t.timestamps null: false
    end
  end
end
