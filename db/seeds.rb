# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  students = [['John Smith','SWE','Senior','2.94'],
              ['Stephen Hawking','Physics','Sophomore','3.75'],
              ['Alan Turing','CS','Junior','3.94']]

  students.each do |name, major, year, gpa|
    Student.create(name: name, major: major, year: year, gpa: gpa)
  end
