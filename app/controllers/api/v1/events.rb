module API  
  module V1
    class Events < Grape::API
      include API::V1::Defaults

      resource :events do
        desc "Return all events"
        get :events do
          Event.all
        end

        desc "Return an event"
        params do
          requires :id, type: Integer, desc: 'ID of the event'
        end
        get ":id", root: "event" do
          Event.find(params[:id])
        end

        desc 'Update an event'
        params do
          requires :id, type: Integer, desc: 'ID of the event'
          requires :title, type: String, desc: 'Title of the event'
          requires :description, type: String, desc: 'Description of the event'
        end
        put ':id' do
          @event = Event.find(params[:id])
          @event.update({
            title: params[:title],
            description: params[:description],
          })
        end
        
        desc 'Delete an event'
        params do
          requires :id, type: Integer, desc: 'ID of the event'
        end
        delete ':id' do
          @event = Event.find(params[:id])          
          @event.participations.destroy_all
          @event.destroy
        end

        desc "Create an event"
        params do 
          requires :title, type: String, desc: 'Title of the event'
          requires :description, type: String, desc: 'Description of the event'
          requires :created_by, type: Integer, desc: 'ID of the creator'
        end
        post do
          @event = Event.create!({
            title: params[:title],
            description: params[:description],
            created_by: params[:created_by],
          })
          Participation.create!({
            event_id: @event.id,
            user_id: params[:created_by]
          })
        end
        
      end
    end
  end
end  