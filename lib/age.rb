require 'age/version'
require 'date'

class Age
  attr_accessor :birth, :end

  def initialize(options)
    @birth = options[:birth] || DateTime.now.offset(0)
    @end = options[:end] || DateTime.now.offset(0)
  end

  def years
    leep_year = 2004
    end_with_leep_year = DateTime.new(leep_year, @end.month, @end.day, @end.hour, @end.min, @end.sec)
    birth_with_leep_year = DateTime.new(leep_year, @birth.month, @birth.day, @birth.hour, @birth.min, @birth.sec)
    if end_with_leep_year < birth_with_leep_year
      @end.year - @birth.year - 1
    else
      @end.year - @birth.year
    end
  end

  def to_i
    years
  end
end
