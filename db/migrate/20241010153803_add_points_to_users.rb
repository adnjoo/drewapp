class AddPointsToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :points, :integer, default: 0
  end
end
