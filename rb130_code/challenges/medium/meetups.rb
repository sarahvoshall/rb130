# frozen_string_literal: true

class Meetup
  require 'date'

  CWDAYS = { 'Monday' => 1,
             'Tuesday' => 2,
             'Wednesday' => 3,
             'Thursday' => 4,
             'Friday' => 5,
             'Saturday' => 6,
             'Sunday' => 7 }.freeze

  def initialize(year, month)
    @year = year
    @month = month
  end

  def day(weekday, schedule)
    weekdays = select_weekdays(weekday)
    schedule = schedule.downcase

    select_scheduled_weekday(schedule, weekdays)
  end

  private

  def select_weekdays(weekday)
    weekday = CWDAYS[weekday.capitalize]
    date = Date.new(@year, @month, 1)
    date_array = []

    until date.month != @month
      date_array << date if date.cwday == weekday
      date = date.next
    end

    date_array
  end

  def select_scheduled_weekday(schedule, weekdays)
    case schedule
    when 'first'
      weekdays.first
    when 'second'
      weekdays.first(2).last
    when 'third'
      weekdays.first(3).last
    when 'fourth'
      weekdays.first(4).last
    when 'fifth'
      weekdays.first(5).last if weekdays.size == 5
    when 'last'
      weekdays.last
    when 'teenth'
      weekdays.select do |day|
        (13..19).to_a.include?(day.mday)
      end.first
    end
  end
end

p Meetup.new(2020, 4).day('Monday', 'teenth')
