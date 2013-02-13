class AddShowIntroToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :show_intro, :boolean
  end
end
