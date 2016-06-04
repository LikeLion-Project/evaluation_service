class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.integer :user_id
      t.string :title
      t.text :content
      t.float :grade, default:0.0

      t.timestamps null: false
    end
  end
end
