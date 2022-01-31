class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def grades
    grades = Student.all
    students = Student.all.sort_by(&:grade).reverse
    render json: students
  end

  def highest_grade
    student = Student.all.sort_by(&:grade).last
    render json: student
  end

end
