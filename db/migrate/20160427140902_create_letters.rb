class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.string :title
      t.text :content
      t.timestamps
    end
  end
end
