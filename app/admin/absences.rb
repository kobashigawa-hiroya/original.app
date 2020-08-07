ActiveAdmin.register Absence do
  permit_params :title, :content, :app_id
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :content, :app_id, :title, :date
  #
  # or
  #
  # permit_params do
  #   permitted = [:content, :app_id, :title, :date]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
