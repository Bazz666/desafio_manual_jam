class AddIndexToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :index, :string
  end
end
