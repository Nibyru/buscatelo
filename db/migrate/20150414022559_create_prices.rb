class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.string :name
      t.string :price
      t.belongs_to :place, index: true

      t.timestamps
    end
  end
end
