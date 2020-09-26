class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :length
      t.belongs_to :album

      t.timestamps
    end
  end
end
