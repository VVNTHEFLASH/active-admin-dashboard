class Client < ApplicationRecord

    #app/admin/clients.rb

    ActiveAdmin.register Client do
        actions :index, :edit, :update, :create, :destroy

        permit_params :name, :address, :company, :phone_number
    end

    def self.ransackable_attributes(auth_object = nil)
        %w[name address company phone_number]
      end
end
