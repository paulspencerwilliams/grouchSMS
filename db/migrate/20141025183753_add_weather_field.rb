class AddWeatherField < ActiveRecord::Migration
  def change
    add_column :users, :phone, :string
    add_column :users, :weather, :boolean
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
  end
end
