class Course
  attr_accessor :teacher_name
  attr_accessor :seats
  attr_accessor :name
  @@code = 0
  def initialize (name , seats , teacher_name, initialDate, finalDate)
    @name = name
    @seats = seats
    @teacher_name = teacher_name
    @initialDate = initialDate
    @FinalDate = finalDate
    @code = @@code
    @students = []
    @teachers = []
    @assignments = []
    ++@@code
  end
  def createAssignment (name, datePosted, dateDelivered, maxGrade)

  end
end
