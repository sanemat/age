#coding: utf-8
require 'minitest/autorun'
require 'age'
require 'coveralls'
Coveralls.wear!

class TestEndWithDateTime < MiniTest::Test
  def setup
    @sanemat = DateTime.new(1982, 7, 16)
    @ruby = DateTime.new(1993, 2, 24)
    @today = DateTime.new(2013, 5, 31)
  end

  def test_sanemat
    assert_equal 30, Age.new(birth: @sanemat, end: @today).to_i
  end

  def test_ruby
    assert_equal 20, Age.new(birth: @ruby, end: @today).to_i
  end

  def test_inspect
    assert_equal '20', Age.new(birth: @ruby, end: @today).inspect
  end
end
