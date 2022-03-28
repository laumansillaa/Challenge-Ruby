
module  Api 
    module V1 
        #El nombre del controlador debe ser en plural y la clase se debe llamar igual que el controlador
        class UsersController < ApplicationController
            def index 
                campeones = User.order('created_at')
                render json: {
                    status: 'SUCCESS',
                    message: 'User cargados',
                    data: campeones
                }, status: :ok  
            end

            def show
                campeon = User.find(params[:id])
                render json: {
                    status: 'SUCCESS',
                    MESSAGE: 'Peticion exitosa',
                    data: campeon
                }, status: :ok
            end


            def create 
                user = User.new(user_params)
                if user.save                    
                    render json: {
                        status: 'SUCCESS',
                        MESSAGE: 'Peticion exitosa',
                        data: user
                        }, status: :ok
                else 
                    render json: {
                        status: 'FAILED',
                        MESSAGE: 'Fallo la peticion',
                        data: user.errors
                        }, status: :unprocessable_entity
                end
                    
            end
            #Parametros que requerimos para el create
            private
            #Tienen que ser los mismos parametros que definimos como requiered
                    
            def user_params
                params.permit(:image, :name, :age, :weigth, :resume, :movies)
            end
            
        end    
    end
end
