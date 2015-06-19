class AddImageToDecisions < ActiveRecord::Migration
  def change
    add_column :decisions, :image_1, :string
    add_column :decisions, :image_2, :string
  end
end
