ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do

    columns do
      column do
        panel "Empresas" do
          Company.all.count
        end
        panel "Usuarios" do
          User.all.count
        end
        panel "Reclamos" do
          Complaint.all.count
        end
      end
    end

 end
end
