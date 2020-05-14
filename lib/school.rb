require 'pry'
class School
  attr_accessor :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  
  def add_student(name, grade)
  if !self.roster[grade]
    self.roster[grade] = []
  end
  self.roster[grade].push(name)
  end
  
  def grade(grade)
    self.roster[grade]
  end
  
  def sort
    self.roster.each do |grade, name|
      self.roster[grade] = self.roster[grade].sort
    end
  end
end


