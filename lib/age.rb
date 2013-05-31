require 'age/version'
require 'date'

class Age
  attr_accessor :birth, :end

  def initialize(options)
    @birth = options[:birth] || DateTime.now.offset(0)
    @end = options[:end] || DateTime.now.offset(0)
  end

  def to_i
    30
  end
end
