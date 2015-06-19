class AddImageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :avatar, :string
    add_column :users, :fondo, :string
  end
end
