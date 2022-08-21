class StudentsController < ApplicationController

  def index
    name = params[:name]
    students = if name
          Student.by_name(name)
        else
          Student.all
        end
    render json: students

  end

  def show
    students = Student.find_by(id: params[:id])
    render json: students
  end

end
