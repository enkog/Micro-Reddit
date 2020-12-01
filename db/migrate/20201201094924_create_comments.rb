class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :body
      t.references :users, null: false, foreign_key: true
      t.references :posts, null: false, foreign_key: true
      t.timestamps
    end
  end
end
    