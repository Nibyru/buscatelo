class CreateAmenities < ActiveRecord::Migration
  def change
    create_table :amenities do |t|
      t.string :name
      t.belongs_to :place, index: true

      t.timestamps
    end
  end
end
