class CreateBlogposts < ActiveRecord::Migration[5.0]
  def change
    create_table :blogposts do |t|
      t.string :blog_post
      t.text :body_content
      t.references :blogger, foreign_key: true

      t.timestamps
    end
  end
end
