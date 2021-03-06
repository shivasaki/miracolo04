class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.string :title
      t.text :text
      t.datetime :start
      t.datetime :end
      t.integer :user_id
      t.integer :place_id

      t.timestamps
    end
  end
end
