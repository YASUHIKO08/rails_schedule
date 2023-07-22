class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :title
      t.string :start
      t.string :end
      t.string :memo

      t.timestamps
    end
  end
end
