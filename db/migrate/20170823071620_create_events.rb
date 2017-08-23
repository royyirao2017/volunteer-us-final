class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.text :title
      t.date :date
      t.text :location
      t.integer :volunteer_number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
