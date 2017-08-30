class AddNameEmailPhoneAgeUniversityToVolunteerApplications < ActiveRecord::Migration[5.0]
  def change
    add_column :volunteer_applications, :name, :string
    add_column :volunteer_applications, :email, :string
    add_column :volunteer_applications, :phone_number, :string
    add_column :volunteer_applications, :age, :integer
    add_column :volunteer_applications, :university, :string
  end
end
