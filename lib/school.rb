# code here!
class School
    attr_accessor :name, :roster

    # initialize for an empty roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    # Add a student as a key(grade) value(student name) pair
    # open up a new array and shovel students and grades into it. 
    # it won't put students multiple students into grades (or= operator?)

    def add_student(student, grade_level)
        roster[grade_level] ||= []
        roster[grade_level] << student 
    end 

    # gather all the students by grade level.
    # .detect enumerable moves through the key value pairs
    # if the key == a given grade level it gives the student name

    def grade (grade_level)
        roster.detect do |x, y|
            if x == grade_level 
                return y
            end
        end
    end
 
    # open a new hash 
    # sort each array into alphabetical order 
    # don't forget to call! 

    def sort
        new_hash = {}
        roster.each do |grade, student|
            new_hash[grade] = student.sort
        end
        new_hash
    end 

end 