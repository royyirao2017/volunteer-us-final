class AddVolunteerInforToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :age, :integer
    add_column :users, :university, :string
    add_column :users, :interests, :string
  end
end
