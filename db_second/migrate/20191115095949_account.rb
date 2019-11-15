class Account < ActiveRecord::Migration[5.2]
  create_table :accounts do |t|
    t.string :title
    t.string :acc_no
    t.text :description

    t.timestamps
  end
end
