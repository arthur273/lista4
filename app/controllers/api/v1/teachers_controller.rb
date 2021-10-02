class Api::V1::TeachersController < ApplicationController
    def index
        teachers = Teacher.all
        render json: teachers, status: :ok
    end

    def show 
        teacher = Teacher.find(params[:id])
        render json: teacher, status: :ok
    rescue StandardError
        head(:not_found)
    end

    def create
        language = Teacher.new(teacher_params)
        language.save!
        render json: language, status:201
    rescue StandardError
        head(:unprocessable_entity)
    end

    def delete
        teacher = Teacher.find(params[:id])
        teacher.destroy!
        render json: teacher, status: :ok
    rescue StandardError
        head(:bad_request)
    end

    def update 
        teacher = Teacher.find(params[:id])
        teacher.update!(teacher_params)
    rescue StandardError
        head(:unprocessable_entity)
    end

    def my_students
        students = Student.where(teacher_id:params[:teacher_id])
        render json: students, status: :ok
    rescue StandardError
        head(:not_found)
    end

    private 

    def teacher_params
        params.require(:teacher).permit(
            :name,
            :email,
            :dataNascimento
        )
    end
end

