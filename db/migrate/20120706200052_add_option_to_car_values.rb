class AddOptionToCarValues < ActiveRecord::Migration
  def change
    add_column :car_values, :option, :string
  end
end
