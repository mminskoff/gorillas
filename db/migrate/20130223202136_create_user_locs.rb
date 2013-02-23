class CreateUserLocs < ActiveRecord::Migration
  def change
    create_table :user_locs do |t|

      t.timestamps
    end
  end
end
