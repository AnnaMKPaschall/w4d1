class CreateArtworkShares < ActiveRecord::Migration[5.2]
  def change
    create_table :artwork_shares do |t|
      t.timestamps 
      t.integer :artwork_id
      t.integer :viewer_id
    end
    add_index :artwork_shares, [:viewer_id, :artwork_id], unique: true 
    add_index :artwork_shares, :viewer_id 
    add_index :artwork_shares, :artwork_id
 end
end
