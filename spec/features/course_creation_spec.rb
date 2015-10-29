require 'rails_helper'
feature 'course creation' do
	scenario 'A user can create a course' do
		visit new_course_path
		fill_in 'Title', :with => 'CAts!'
		fill_in 'Deptname', :with => 'CS'
		fill_in 'Coursenumber', :with => '10298'
		click_button 'Create Course'

		expect(Course.count).to eq(1)

		course = Course.first
		expect(course.title).to eq('CAts!')
		expect(course.deptName).to eq('CS')
		expect(course.courseNumber).to eq('10298')
	end
end
