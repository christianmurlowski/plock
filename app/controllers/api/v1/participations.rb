module API  
  module V1
    class Participations < Grape::API
      include API::V1::Defaults

      resource :participations do
        desc "Return all participations"
        get "", :participations do
          Participation.all
        end

        desc "Return participations of current user"
        params do
          requires :user_id, type: Integer, desc: 'ID of the user'
        end
        get ":user_id", :participations do
          Participation.where(user_id: params[:user_id])
        end
        
        desc 'Delete participation of one event'
        params do
          requires :event_id, type: Integer, desc: 'ID of the event'
          requires :user_id, type: Integer, desc: 'ID of the user'
        end
        delete ':event_id' do
          @participation = Participation.where(user_id: params[:user_id], event_id: params[:event_id]).destroy_all
        end

        desc "Create a participation"
        params do 
          requires :event_id, type: Integer, desc: 'ID of the event'
          requires :user_id, type: Integer, desc: 'ID of the user'
        end
        post do
          Participation.create!({
            event_id: params[:event_id],
            user_id: params[:user_id]
          })
        end
        
      end
    end
  end
end  