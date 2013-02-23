class AddCityAndStateToUserLocs < ActiveRecord::Migration
  def change
    add_column :user_locs, :city, :string
    add_column :user_locs, :state, :string
  end
end
