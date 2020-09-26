class CreateAlbumArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :album_artists do |t|
      t.belongs_to :album, null: false, foreign_key: true
      t.belongs_to :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
