class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.text :address
      t.string :phone

      t.timestamps
    end
  end
end
