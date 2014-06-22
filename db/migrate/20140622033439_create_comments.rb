class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body

      # this line adds an integer column called 'article_id'
      # it sets up a foreign key column for the association between the two models
      t.references :article, index: true

      t.timestamps
    end
  end
end
