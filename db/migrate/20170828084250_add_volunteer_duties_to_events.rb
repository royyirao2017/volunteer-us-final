class AddVolunteerDutiesToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :volunteer_duties, :text
  end
end
