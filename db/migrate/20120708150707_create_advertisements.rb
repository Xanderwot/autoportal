class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :title
      t.integer :advertisementable_id
      t.string :advertisementable_type
      t.boolean :paid
      t.timestamp :paid_at
      t.integer :created_by_id

      t.timestamps
    end
  end
end
