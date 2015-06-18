class CourseController < ApplicationController
  def index
	@courses = Course.all
  end

  def show
	@courses = Course.all
  end

  def new
  end
end
