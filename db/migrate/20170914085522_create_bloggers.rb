class CreateBloggers < ActiveRecord::Migration[5.0]
  def change
    create_table :bloggers do |t|
      t.string :gmail
      t.string :password
      t.string :oauth_token

      t.timestamps
    end
  end
end
