class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.belongs_to :comment # Chaque réponse de commentaire correspond à un seul commentaire
      t.belongs_to :user # Chaque réponse de commentaire est faite par un seul user
      t.text :content
      t.integer :rank
      t.timestamps
    end
  end
end
