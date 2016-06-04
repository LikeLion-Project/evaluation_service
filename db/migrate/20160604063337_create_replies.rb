class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|

      t.integer :user_id
      t.integer :post_id
      t.string :title
      t.text :content
      t.float :grade, default:0

      t.timestamps null: false
    end
  end
end
