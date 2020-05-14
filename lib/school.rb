# code here!

require "pry"

class School

  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(s_name, grade)
    roster[grade] ||= []
    roster[grade] << s_name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_roster = {}
    roster.each do |grade, s_list|
      sorted_roster[grade] = s_list.sort
    end
    sorted_roster
  end


end

# carmel = School.new("Carmel")
# binding.pry
