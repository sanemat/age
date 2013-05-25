#coding: utf-8
require 'minitest/autorun'
require 'date'
require 'age'

class TestAge < MiniTest::Unit::TestCase
  def test_sanemat
    assert_equal Age.new(birth: DateTime.new(1982, 7, 16), end: DateTime.new(2013, 5, 24)).to_i, 30
  end
end
