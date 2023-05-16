class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades 
        graded = Student.order(grade: :desc)
        render json: graded
    end
end
