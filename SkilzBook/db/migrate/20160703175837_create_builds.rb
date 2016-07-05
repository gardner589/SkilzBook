class CreateBuilds < ActiveRecord::Migration
  def change
    create_table :builds do |t|
      t.string :name
      t.text :details
      t.string :img_url
      t.string :vid_url
      t.references :skill, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
