require "minitest/autorun"
require "active_support/all"
require "./fizzbuzz"

class FizzbuzzTest < ActiveSupport::TestCase
  def test_1を渡すと文字列1を返す
    assert_equal "1", Fizzbuzz.run(1)
  end

  def test_3を渡すと文字列Fizzを返す
    assert_equal "Fizz", Fizzbuzz.run(3)
  end

  def test_5を渡すと文字列Buzzを返す
    assert_equal "Buzz", Fizzbuzz.run(5)
  end

  def test_15を渡すと文字列Buzzを返さない
    assert_not_equal "Buzz", Fizzbuzz.run(15)
  end

  def test_15を渡すと文字列FizzBuzzを返す
    assert_equal "FizzBuzz", Fizzbuzz.run(15)
  end
end
