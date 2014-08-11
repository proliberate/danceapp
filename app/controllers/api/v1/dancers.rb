module API
  module V1
    class Dancers < Grape::API
      include API::V1::Defaults

      resource :dancers do
        desc "Return all dancers"
        get "", root: :dancers do
          Dancer.all
        end

        desc "Return a dancer"
        params do
          requires :id, type: String, desc: "ID of the dancer"
        end
        get ":id", root: "dancer" do
          Dancer.where(id: permitted_params[:id]).first!
        end

        desc "Create a status."
        params do
          requires :first_name, type: String, desc: "First name of the dancer"
          requires :last_name, type: String, desc: "Last name of the dancer"
          requires :email, type: String, desc: "Email of the dancer"
        end
        post do
          Dancer.create!({
            first_name: params[:first_name],
            last_name: params[:last_name],
            email: params[:email]
          })
        end
      end
    end
  end
end
