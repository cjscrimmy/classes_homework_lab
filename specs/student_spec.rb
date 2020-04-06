require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../student")

class TestStudent < MiniTest::Test
  def setup()
    @student = Student.new("Craig", "e39")
  end

  def test_get_student_name
    assert_equal("Craig", @student.name)
  end

  def test_get_cohort
    assert_equal("e39", @student.cohort)
  end

  def test_set_name
    @student.name = "Bob"
    assert_equal("Bob", @student.name)
  end

  def test_set_cohort
    @student.cohort = "e40"
    assert_equal("e40", @student.cohort)
  end

  def test_student_talk
    assert_equal("I can talk!", @student.talk())
  end

  def test_say_favourite_language
    assert_equal("I love Ruby", @student.say_favourite_language("Ruby"))
  end


end
