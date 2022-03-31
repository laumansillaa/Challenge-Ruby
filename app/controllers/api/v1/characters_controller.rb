
module  Api 
    module V1 
        #El nombre del controlador debe ser en plural y la clase se debe llamar igual que el controlador
        class CharactersController < ApplicationController
            #Trae todos los resultados ordenados por created_at
            def index 
                all_characters = Character.order('created_at')
                render json: {
                    status: 'SUCCESS',
                    message: 'Character cargados',
                    data: all_characters
                }, status: :ok  
            end

            def show
                character = Character.find(params[:id])
                render json: {
                    status: 'SUCCESS',
                    MESSAGE: 'Peticion exitosa',
                    data: character
                }, status: :ok
            end


            def create 
                character = Character.new(character_params)    
                #logger.debug("SOY USER #{user.attributes}")  
                          
                if character.save                    
                    render json: {
                        status: 'SUCCESS',
                        MESSAGE: 'Peticion exitosa',
                        data: character
                        }, status: :ok
                else 
                    render json: {
                        status: 'FAILED',
                        MESSAGE: 'Fallo la peticion',
                        data: character.errors
                        }, status: :unprocessable_entity
                end
                    
            end

            def update
                update_character = Character.find(params[:id])

                if update_character.update(character_params)
                    render json: {
                        status: 'SUCCESS',
                        MESSAGE: 'Peticion exitosa',
                        data: update_character
                    }, status: :ok
                    else 
                        render json: {
                            status: 'FAILED',
                            MESSAGE: 'Hubo un error en la actualizacion'                            
                        }, status: :unprocessable_entity
                end

            end

            def destroy 
                delete_character = Character.find(params[:id])

                if delete_character.destroy
                    render json: {
                        status: 'SUCCESS',
                        message: 'Eliminado con exito',
                        data: delete_character
                    }, status: :ok
                    else 
                        render json: {
                            status: 'FAILED',
                            message: 'Hubo un error al eliminar el registro'
                        }
                end 

            end

            #Parametros que requerimos para el create
            private
            #Tienen que ser los mismos parametros que definimos como requiered
                    
            def character_params
                params.permit(:image, :name, :age, :weigth, :resume, :movies)
            end            
            
        end    
    end
end
