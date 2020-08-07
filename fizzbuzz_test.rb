require "test/unit"
require "./fizzbuzz"

class FizzbuzzTest < Test::Unit::TestCase
  def setup
    @fb = Fizzbuzz.new
  end

  def test_1を渡すと文字列1を返す
    assert_equal "1", @fb.fizzbuzz(1)
  end

  def test_3を渡すと文字列Fizzを返す
    assert_equal "Fizz", @fb.fizzbuzz(3)
  end

  def test_5を渡すと文字列Buzzを返す
    assert_equal "Buzz", @fb.fizzbuzz(5)
  end

  def test_15を渡すと文字列Buzzを返さない
    refute_equal "Buzz", @fb.fizzbuzz(15)
  end

  def test_15を渡すと文字列FizzBuzzを返す
    assert_equal "FizzBuzz", @fb.fizzbuzz(15)
  end
end
