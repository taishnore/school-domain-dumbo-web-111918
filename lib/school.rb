require 'pry'

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = Hash.new { |roster, grade| roster[grade] = [] }
  end


  def add_student(student_name, grade)
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each_value do |value|
      value.sort!
    end
  end



end

binding.pry
