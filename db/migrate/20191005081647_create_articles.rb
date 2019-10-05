class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string      :title, null: false
      t.text        :text, null: false
      t.integer     :user_id, foreign_key: true
      t.timestamps  null:false
    end
  end
end
