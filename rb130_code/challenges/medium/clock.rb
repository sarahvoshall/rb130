# frozen_string_literal: true

# Write a class that represents a clock that is independent of realtime.
#
# Understanding the Problem:
# The clock's methods:
# - clock objects at the same time should be the same
#   - define an == method so that the four character strings are compared when considering equality
# - self.at which takes one or two arguments and can be incremented outside the parameter
#   - this method save the hours and minutes into variables
# - self.to_s
#   - this method will return a four character string
#     - in order to always return a four char str, the method must know how to add leading zeros
#   - this method will format a four character string to return like this: '23:20'
#   - this method will also deal with incremented/decremented times from a plus or minus minutes
#     - '1361' ==> '14:01'

# Write a class that represents a clock that is independent of realtime.
class Clock
  attr_accessor :time, :hour, :minute
  def initialize(hour, minute)
    @hour = hour
    @minute = minute
  end

  def self.at(hour, minute = 0)
    @time = Clock.new(hour, minute)
  end

  def +(other)
    while @minute + other >= 60
      @hour + 1 >= 24 ? @hour = 0 : @hour += 1
      other -= 60
    end

    @minute += other

    self
  end

  def wrap_around_midnight
    @hour = 24 if @hour - 1 <= 0
  end

  def -(other)
    other -= 24 * 60 while other > 24 * 60

    while other > 60
      wrap_around_midnight
      @hour -= 1
      other -= 60
    end

    if @minute < other
      wrap_around_midnight
      @hour -= 1
      @minute += 60 - other
    else
      @minute -= other
    end

    self
  end

  def to_s
    @string = String.new
    @string += format_time(hour)
    @string += format_time(minute)
    @string.insert(2, ':')
  end

  def format_time(number)
    number.to_s.size == 1 ? ('0' + number.to_s) : number.to_s
  end

  def ==(other)
    hour == other.hour && minute == other.minute
  end
end

clockie = Clock.at(12, 4) - 290000

p clockie.to_s
