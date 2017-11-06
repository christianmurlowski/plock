module API  
  module V1
    class Participations < Grape::API
      include API::V1::Defaults

      resource :participations do
        desc "Return all participations"
        get "", root: :participations do
          Participation.all
        end
        
      end
    end
  end
end  