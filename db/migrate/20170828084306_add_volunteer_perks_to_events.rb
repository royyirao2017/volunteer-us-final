class AddVolunteerPerksToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :volunteer_perks, :text
  end
end
