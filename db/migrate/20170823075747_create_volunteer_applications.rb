class CreateVolunteerApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :volunteer_applications do |t|
      t.text :status
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
