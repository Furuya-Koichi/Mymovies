class CreateBookmarks < ActiveRecord::Migration[5.0]
  def change
    create_table :bookmarks do |t|
      t.references :user, foreign_key: true
      t.references :board, foreign_key: true

      t.timestamps
      t.index [:user_id, :board_id], unique: true # 追加
    end
  end
end
