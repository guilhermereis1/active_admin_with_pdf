ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation

  controller do
    def index
      respond_to do |format|
        format.html { super }
        format.csv  { super }
        format.xml  { super }
        format.json { super }

        format.pdf do
          @users = User.all
          render pdf: 'users', layout: 'pdf', template: 'admin/users/index_pdf.html.erb'
        end
      end
    end
  end

  index download_links: [:csv, :xml, :json, :pdf] do
    selectable_column

    id_column

    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at

    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs 'User Details' do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end

    f.actions
  end
end
