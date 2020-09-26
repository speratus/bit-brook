class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.text :bio
      t.integer :total_listens

      t.timestamps
    end
  end
end
