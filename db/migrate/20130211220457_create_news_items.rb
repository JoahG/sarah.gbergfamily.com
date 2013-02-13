class CreateNewsItems < ActiveRecord::Migration
  def change
    create_table :news_items do |t|
      t.string :title
      t.string :content
      t.string :author_name

      t.timestamps
    end
  end
end
