module Api
    module V1
        class MoviesController < ApplicationController
            before_action :authenticate_user!, except: [:index, :show]
            def index 
               all_movies = Movie.order('created_at')
               
               render json: {
                   status: 'SUCCESS',
                   message: 'Peliculas cargadas',
                   data: all_movies
               }, status: :ok
            end

            def show 
                movie = Movie.find(params[:id])
                render json: {
                    status: 'SUCCESS',
                    message: 'Solicitud exitosa',
                    data: movie
                }, status: :ok

            end

            def create 
                movie = Movie.new(movies_params)

                if movie.save
                    render json: {
                        status: 'SUCCESS',
                        message: 'Pelicula creada con exito',
                        data: movie
                    }, status: :ok
                    else 
                        render json: {
                            status: 'FAILED',
                            message: 'Hubo un error en la creacion',
                            data: movie.errors
                        }, status: :unprocessable_entity
                end
            end

            def update 
                update_movie = Movie.find(params[:id])

                if update_movie.update(movies_params)
                    render json: {
                        status: 'SUCCESS',
                        message: 'Datos de la pelicula actualizados con exito',
                        data: update_movie
                    }, status: :ok
                    else 
                        render json: {
                            status: 'FAILED',
                            message: 'Error en la actualizacion de datos',
                            data: update_movie.errors
                        }, status: :unprocessable_entity
                end
            end

            def destroy 
                delete_movie = Movie.find(params[:id])
                if delete_movie.destroy                    
                    render json: {
                        status: 'SUCCESS',
                        message: 'Eliminado con exito',
                        data: delete_movie
                    }, status: :ok
                    else 
                        render json: {
                            status: 'FAILED',
                            message: 'Se produjo un error al eliminar el registro'
                        }
                end                
            end

            private 
            #qualit es integer 
            def movies_params
                params.permit(:image, :title, :release, :qualification)
            end
        end
    end
end