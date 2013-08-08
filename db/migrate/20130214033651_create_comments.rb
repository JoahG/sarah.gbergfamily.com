class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author_name
      t.string :author_email
      t.string :content

      t.timestamps
    end
  end
end
