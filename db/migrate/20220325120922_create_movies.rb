class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :image
      t.string :title
      t.string :release
      t.integer :qualification
      t.string :associated_characters

      t.timestamps
    end
  end
end
