module API  
  module V1
    class Users < Grape::API
      include API::V1::Defaults

      resource :users do
        desc "Return all users"
        get "", root: :users do
          User.all
        end

        desc "Return a user"
        params do
          requires :id, type: Integer, desc: "ID of the 
            user"
        end
        get ":id", root: "user" do
          User.find(params[:id])
        end
      end
    end
  end
end  