def Course
  attr_accessor :teacher_name
  attr_accessor :seats
  attr_accessor :name
  def initialize (name , seats , teacher_name)
    @name = name
    @seats = seats
    @teacher_name = teacher_name
  end
end
