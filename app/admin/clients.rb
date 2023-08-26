#app/admin/clients.rb

ActiveAdmin.register Client do

  # …
  # …

  menu label: "VIP Clients"

  index do
      column :name
      column :address
      column :company
      column :phone_number    
  end

 filter :name
 filter :company

 controller { 
  actions :all
  # except: [:destroy] 
}

end