class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.string :name
    	t.integer :decision_id
    	t.string :image
    	t.integer :votes

      t.timestamps null: false
    end
  end
end
