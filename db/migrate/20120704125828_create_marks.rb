class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.string :name

      t.timestamps
    end
  end
end
