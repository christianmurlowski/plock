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

        desc 'Update a user'
        params do
          requires :id, type: Integer, desc: 'ID of the user'
          requires :email, type: String, desc: 'Email of the user'
          requires :name, type: String, desc: 'Name of the user'
        end
        put ':id' do
          @user = User.find(params[:id])
          @user.update({
            email: params[:email],
            name: params[:name],
          })
        end
        
        desc 'Delete a user'
        params do
          requires :id, type: Integer, desc: 'ID of the user'
        end
        delete ':id' do
          Participation.where(user_id: params[:id]).destroy_all
          User.find(params[:id]).destroy
        end

        # desc "Create a user"
        # params do 
        #   requires :email, type: String, desc: 'Email of the user'
        #   requires :name, type: String, desc: 'Name of the user'
        # end
        # post do
        #   User.create!({
        #     email: params[:email],
        #     name: params[:name]
        #   })
        # end


      end
    end
  end
end  