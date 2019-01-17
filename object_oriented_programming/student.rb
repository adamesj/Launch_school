# Create a class 'Student' that attributes name and grade.
# Do not make the grade getter method public.
# Create a better_grade_than? method that can be called like so:
# puts "Well done!" if joe.better_grade_than?(bob)
  # This method compares that grades between both objects and outputs well done if the object calling the method
  # has a higher grade than the argument

class Student
  attr_accessor :name
  NUMBER_OF_STUDENTS = 5

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(student)
    self.grade > student.grade # From inside the class, protected methods are accessible just like public methods. So the instance can call the method.
  end

  protected

  def grade # cannot be accessed outside of the class but can be access within the class.
    @grade
  end
end

joe = Student.new("Joe", 85)
bob = Student.new("Bob", 72)
puts "Well Done!" if joe.better_grade_than?(bob)
p Student::NUMBER_OF_STUDENTS