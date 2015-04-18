class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.integer :place_id
      t.string :photo

      t.timestamps
    end
  end
end
