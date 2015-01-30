class CoursesController < ApplicationController
  def create
    @student = Student.find(params[:student_id])
    @course = @student.courses.create(course_params)
    redirect_to student_path(@student)
  end

  def destroy
    @student = Student.find(params[:student_id])
    @course = @student.courses.find(params[:id])
    @course.destroy
    redirect_to student_path(@student)
  end

  private
    def course_params
      params.require(:course).permit(:number,:name)
    end
end
