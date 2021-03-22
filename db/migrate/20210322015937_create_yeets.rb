class CreateYeets < ActiveRecord::Migration[6.1]
  def change
    create_table :yeets do |t|
      t.text :yeet

      t.timestamps
    end
  end
end
