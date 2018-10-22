# Part A Spec

require('minitest/autorun')
require('minitest/rg')
require_relative('../student')

class TestStudent < MiniTest::Test

  def setup
    @student = Student.new("Helena", "e10")
  end


    def test_student_name
      expected = "Helena"
      actual = @student.name
      assert_equal(expected, actual)
    end

    def test_cohort
      expected = "e10"
      actual = @student.cohort
      assert_equal(expected, actual)
    end

    def test_set_name
      @student.set_name("Robert")
      expected = "Robert"
      actual = @student.name
      assert_equal(expected, actual)
    end

    def test_set_cohort
      @student.set_cohort("e18")
      expected = "e18"
      actual = @student.cohort
      assert_equal(expected, actual)
    end

    def test_student_talk
      expected = "I can talk!"
      actual = @student.talk()
      assert_equal(expected, actual)
    end

    def test_favourite_language
      expected = "I love Ruby!"
      actual = @student.favourite_language("Ruby")
      assert_equal(expected, actual)
    end


end
