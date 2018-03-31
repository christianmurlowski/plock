module API  
  module V1
    class Events < Grape::API
      include API::V1::Defaults

      resource :events do
        desc "Return all events"
        get "", root: :events do
          Event.all
        end

        desc "Return an event"
        params do
          requires :id, type: Integer, desc: "ID of the event"
        end
        get ":id", root: "event" do
          Event.find(params[:id])
        end

        
      end
    end
  end
end  