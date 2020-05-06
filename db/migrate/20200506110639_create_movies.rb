class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :move
      t.text :note
      t.timestamps
    end
  end
end
