class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :title
      t.text :body
      t.references :user, index: true, foreign_key: true
      t.references :agency, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
