class CoursesController < ApplicationController
  def index
	@courses = Course.all
  end

  def show
	@courses = Course.all
  end

  def new
	@course = Course.new
  end

  def create
	course_params = params.require(:course).permit(:title, :deptName, :courseNumber)
	course = Course.create(course_params)
	redirect_to courses_path
  end
end
