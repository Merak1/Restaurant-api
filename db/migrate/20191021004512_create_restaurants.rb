class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :uuid
      t.integer :rating
      t.string :name
      t.string :site
      t.string :email
      t.string :phone
      t.string :street
      t.string :city
      t.string :state
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
