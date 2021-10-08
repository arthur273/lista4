class Api::V1::StudentsController < ApplicationController
    acts_as_token_authentication_handler_for Admin, only: [:create,:delete]
    def index
        languages = Student.all
        render json: languages, status: :ok
    end

    def show 
        language = Student.find(params[:id])
        render json: language, status: :ok
    rescue StandardError
        head(:not_found)
    end

    def create
        language = Student.new(language_params)
        language.save!
        render json: language, status:201
    rescue StandardError
        head(:unprocessable_entity)
    end

    def delete
        language = Student.find(params[:id])
        language.destroy!
        render json: language, status: :ok
    rescue StandardError
        head(:bad_request)
    end

    private 

    def language_params
        params.require(:student).permit(
            :name,
            :matricula,
            :email,
            :dataNascimento,
            :teacher_id,
            :pfp
        )
    end
end
