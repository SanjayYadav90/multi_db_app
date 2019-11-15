class Log < ActiveRecord::Migration[5.2]
  create_table :logs do |t|
    t.string :title
    t.boolean :status
    t.text :description

    t.timestamps
  end
end
