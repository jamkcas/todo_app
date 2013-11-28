class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :content
      t.string :color
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
