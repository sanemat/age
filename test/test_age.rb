#coding: utf-8
require 'minitest/autorun'
require 'age'

class TestAge < MiniTest::Unit::TestCase
  def test_sanemat
    assert_equal Age.new(birth: DateTime.new(1982, 7, 16), end: DateTime.new(2013, 5, 24)).to_i, 30
  end

  def test_ruby
    assert_equal Age.new(birth: DateTime.new(1993, 2, 24), end: DateTime.new(2013, 5, 31)).to_i, 20
  end

  def test_inspect
    assert_equal Age.new(birth: DateTime.new(1993, 2, 24), end: DateTime.new(2013, 5, 31)).inspect, '20'
  end
end
