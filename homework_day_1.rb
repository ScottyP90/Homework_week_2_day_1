class Student

  attr_accessor :name, :cohort

  def initialize(name,cohort)
    @name = name
    @cohort = cohort
  end

  def get_name
    return @name
  end

  def get_cohort
    return @cohort
  end

  def student_name_change(new_student)
    @name = new_student
  end

  def student_cohort_change(new_cohort)
    @cohort = new_cohort
  end

  def student_to_talk
    return "I can talk!"
  end

  def student_say_ruby
    return "I love Ruby"
  end

end
