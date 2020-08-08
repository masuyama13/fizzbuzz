require "test/unit"
require "./fizzbuzz"

class FizzbuzzTest < Test::Unit::TestCase
  def wrapper(num)
    Fizzbuzz.run(num)
  end

  def test_1を渡すと文字列1を返す
    assert_equal "1", wrapper(1)
  end

  def test_3を渡すと文字列Fizzを返す
    assert_equal "Fizz", wrapper(3)
  end

  def test_5を渡すと文字列Buzzを返す
    assert_equal "Buzz", wrapper(5)
  end

  def test_15を渡すと文字列Buzzを返さない
    refute_equal "Buzz", wrapper(15)
  end

  def test_15を渡すと文字列FizzBuzzを返す
    assert_equal "FizzBuzz", wrapper(15)
  end
end
