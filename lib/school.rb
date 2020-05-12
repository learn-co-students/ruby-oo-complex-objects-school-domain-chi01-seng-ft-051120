# code here!
require 'pry'

class School 
    def initialize(name)
        @name = name 
        @roster = {}
    end 

    def roster
        @roster
    end 

    def add_student(stu_name, grade)
        if !@roster[grade]
        @roster[grade] = []
        end 
        @roster[grade] << stu_name 
    end 

    def grade(grade_number)
        @roster[grade_number]
    end 

    def sort
        @roster.each {|key, value|  
        @roster[key] = value.sort
        }
        @roster 
    end 
end 