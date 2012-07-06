class CreateCarValues < ActiveRecord::Migration
  def change
    create_table :car_values do |t|
      t.text :car_values

      t.timestamps
    end
  end
end
