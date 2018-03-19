ActiveAdmin.register Complaint do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :user, :company, :comment
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  index do
    selectable_column
    id_column
    column :user
    column :company
    column :comment
    actions
  end

  form do |f|
    f.inputs do
      f.input :user_id
      f.input :company_id
      f.input :comment
    end
    f.actions
  end

end
