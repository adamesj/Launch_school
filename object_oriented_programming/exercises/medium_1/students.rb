=begin
  Below we have 3 classes: Student, Graduate, and Undergraduate.
  Some details for these classes are missing.
  Make changes to the classes below so that the following requirements are fulfilled:

  1) Graduate students have the option to use on-campus parking, while Undegraduate students do not.
  2) Graduate and Undergraduate students have a name and year associated with them.

  You can only add/alter 5 lines of code.

  class Student
    def initialize(name, year)
      @name = name
      @year = year
    end
  end

  class Graduate
    def initialize(name, year, parking)
    end
  end

  class Undergraduate
    def initialize(name, year)
    end
  end
=end

class Student
  def initialize(name, year)
    @name = name
    @year = year
  end
end

class Graduate < Student
  def initialize(name, year, parking)
    super(name, year)
    @parking = parking
  end
end

class Undergraduate < Student
  def initialize(name, year)
    super # all arguments from the calling method will be passed to the superclass method of the same name (initialize)
  end
end

# super calls a method further up the inheritance chain that has the same name as the enclosing method.
