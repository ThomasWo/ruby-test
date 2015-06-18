class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :deptName
      t.string :description
      t.boolean :hasLab
      t.string :courseNumber
      t.decimal :loadHours
      t.decimal :semesterHours
      t.string :format
      t.string :note
      t.decimal :fee
      t.string :title
      t.string :courseColleagueId
      t.string :courseSubject

      t.timestamps null: false
    end
  end
end
