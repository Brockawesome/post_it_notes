class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :color
      t.string :title
      t.text :body
      t.timestamp :time_created

      t.timestamps
    end
  end
end
