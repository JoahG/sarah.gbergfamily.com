class CreateButtons < ActiveRecord::Migration
  def change
    create_table :buttons do |t|
      t.string :side
      t.string :url

      t.timestamps
    end
  end
end
