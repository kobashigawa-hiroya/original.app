ActiveAdmin.register Contact do
  permit_params :title, :content, :my_contact, :app_id
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :content, :app_id, :my_contact
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :content, :app_id, :my_contact]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  # def template
  # ApplicationController.renderer.render partial: "contacts/contact", locals: { contact: self }
  # end
end
