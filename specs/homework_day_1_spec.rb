require('minitest/autorun')
require('minitest/rg')
require_relative('../homework_day_1.rb')

class StudentTest < MiniTest::Test

  def setup
    @student = Student.new("Scott", "G10")
  end

    def test_student_name_getter
      name = @student.get_name
      assert_equal("Scott", name)
    end

    def test_student_cohort_getter
      cohort = @student.get_cohort
      assert_equal("G10", cohort)
    end

    def test_student_name_change
      @student.name = "Iain"
      name = @student.name()
      assert_equal("Iain", name)
    end

    def test_student_cohort_change
      @student.cohort = "G11"
      cohort = @student.cohort
      assert_equal("G11", cohort)
    end

    def test_student_to_talk
      name = @student.student_to_talk
      assert_equal("I can talk!", name)
    end

    def test_student_say_ruby
      @student.student_say_ruby()
      assert_equal("I love Ruby",@student.student_say_ruby)
    end

end
