def Course
  attr_accessor :teacher_name
  attr_accessor :seats
  attr_accessor :name
  @@code = 0
  def initialize (name , seats , teacher_name)
    @name = name
    @seats = seats
    @teacher_name = teacher_name
    @code = @@code
    ++@@code
  end
end
