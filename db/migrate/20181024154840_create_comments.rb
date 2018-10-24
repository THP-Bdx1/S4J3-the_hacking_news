class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.belongs_to :post # Chaque Comment apparaît dans un seul post
      t.belongs_to :user # Chaque Comment est écrit par un seul user
      t.text :content
      t.integer :rank
      t.timestamps
    end
  end
end
