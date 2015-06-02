class CreateDecisions < ActiveRecord::Migration
  def change
    create_table :decisions do |t|
    	t.string :category
    	t.string :description
      t.timestamps null: false
    end
  end
end
