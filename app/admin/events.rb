ActiveAdmin.register Event do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
 index do
  selectable_column
  column :title
  column :date
  column :location
  column :volunteer_number
  column :category
  column :description
  column :phone_number
  column :volunteer_duties
  column :volunteer_perks
  actions
end
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
