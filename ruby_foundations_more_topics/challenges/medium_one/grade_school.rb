=begin
  Write a program that stores students names along with the grade they are in.
  Requirements:
  - Add a student's name to the roster for a grade
  - i.e. "Add Jim to grade 2." -> "OK"

  - Get a list of all students enrolled in a grade
  - i.e. "Which students are in grade 2?" -> "We've only got Jim just now."


  - Get a sorted list of all students in all grades.
  - i.e. {1=>["Anna", "Barb", "Charlie"], 2=>["Alex", "Peter"], ...}
=end

class School
  def initialize
    @roster = {}
  end

  def add(student_name, student_grade)
    if @roster.has_key?(student_grade)
      @roster[student_grade] << student_name
    else
      @roster[student_grade] = [student_name]
    end
  end

  def grade(level)
    if @roster.has_key?(level)
      @roster[level]
    else
      []
    end
  end

  def to_h
    @roster.each_value {|students| students.sort!}
    @roster.sort.to_h
  end
end