class CreatePost < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :title
      t.text :text
      t.integer :commets_counter
      t.integer :likes_counter
      t.timestamps
    end
  end
end
