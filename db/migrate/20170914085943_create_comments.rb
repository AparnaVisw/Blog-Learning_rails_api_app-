class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :suggestion
      t.references :blogpost, foreign_key: true
      t.references :blogger, foreign_key: true

      t.timestamps
    end
  end
end
