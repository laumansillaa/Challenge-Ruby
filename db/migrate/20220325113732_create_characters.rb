class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :image
      t.string :name
      t.string :age
      t.string :weigth
      t.string :resume
      t.string :movies

      t.timestamps
    end
  end
end
