class CreateAppearances < ActiveRecord::Migration[6.1]
  def change
    create_table :appearances do |t|
      t.references :guest_id
      t.references :episode_id
      t.integer :rating 
      t.timestamps
    end
  end
end
