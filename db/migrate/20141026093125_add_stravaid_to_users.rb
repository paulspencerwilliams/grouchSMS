class AddStravaidToUsers < ActiveRecord::Migration
  def change
    add_column :users, :stravaid, :string
  end
end
