class CreateLocation < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :img1
      t.string :img2
      t.string :img3
      t.string :description
      
    end
  end
end
