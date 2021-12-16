# require 'date'

# class Meetup
#   attr_reader :date, :sched_hsh

#   def initialize(year, month, day = 1)
#     @date = Date.new(year, month, day)
#     @sched_hsh = { 'first' => 1, 'second' => 2, 'third' => 3, 'fourth' => 4, 'fifth' => 5, 'teenth' => (13..19), 'last' => 6 }
#   end

#   def day(weekday, schedule)
#     case weekday.downcase
#     when 'monday' then monday(sched_hsh[schedule.downcase])
#     when 'tuesday' then tuesday(sched_hsh[schedule.downcase])
#     when 'wednesday' then wednesday(sched_hsh[schedule.downcase])
#     when 'thursday' then thursday(sched_hsh[schedule.downcase])
#     when 'friday' then friday(sched_hsh[schedule.downcase])
#     when 'saturday' then saturday(sched_hsh[schedule.downcase])
#     when 'sunday' then sunday(sched_hsh[schedule.downcase])
#     end
#   end

#   def monday(schedule)
#     counter = 0
#     day = nil
#     date.upto(date.next_month - 1) do |d|
#       counter += 1 if d.monday?
#       if schedule == counter
#         return d
#       elsif schedule == (13..19)
#         return d if schedule === d.day && d.monday?
#       elsif schedule == 6 && d.monday?
#         day = d
#       end
#     end
#     day
#   end

#   def tuesday(schedule)
#     counter = 0
#     day = nil
#     date.upto(date.next_month - 1) do |d|
#       counter += 1 if d.tuesday?
#       if schedule == counter
#         return d
#       elsif schedule == (13..19)
#         return d if schedule === d.day && d.tuesday?
#       elsif schedule == 6 && d.tuesday?
#         day = d
#       end
#     end
#     day
#   end

#   def wednesday(schedule)
#     counter = 0
#     day = nil
#     date.upto(date.next_month - 1) do |d|
#       counter += 1 if d.wednesday?
#       if schedule == counter
#         return d
#       elsif schedule == (13..19)
#         return d if schedule === d.day && d.wednesday?
#       elsif schedule == 6 && d.wednesday?
#         day = d
#       end
#     end
#     day
#   end

#   def thursday(schedule)
#     counter = 0
#     day = nil
#     date.upto(date.next_month - 1) do |d|
#       counter += 1 if d.thursday?
#       if schedule == counter
#         return d
#       elsif schedule == (13..19)
#         return d if schedule === d.day && d.thursday?
#       elsif schedule == 6 && d.thursday?
#         day = d
#       end
#     end
#     day
#   end

#   def friday(schedule)
#     counter = 0
#     day = nil
#     date.upto(date.next_month - 1) do |d|
#       counter += 1 if d.friday?
#       if schedule == counter
#         return d
#       elsif schedule == (13..19)
#         return d if schedule === d.day && d.friday?
#       elsif schedule == 6 && d.friday?
#         day = d
#       end
#     end
#     day
#   end

#   def saturday(schedule)
#     counter = 0
#     day = nil
#     date.upto(date.next_month - 1) do |d|
#       counter += 1 if d.saturday?
#       if schedule == counter
#         return d
#       elsif schedule == (13..19)
#         return d if schedule === d.day && d.saturday?
#       elsif schedule == 6 && d.saturday?
#         day = d
#       end
#     end
#     day
#   end

#   def sunday(schedule)
#     counter = 0
#     day = nil
#     date.upto(date.next_month - 1) do |d|
#       counter += 1 if d.sunday?
#       if schedule == counter
#         return d
#       elsif schedule == (13..19)
#         return d if schedule === d.day && d.sunday?
#       elsif schedule == 6 && d.sunday?
#         day = d
#       end
#     end
#     day
#   end
# end

# puts Meetup.new(2013, 3).day('Monday', 'teenth')

class Meetup 
  SCHEDULE_START_DAY = {
    'first'=>1,
    'second' => 8,
    'third' => 15,
    'fourth' => 22,
    'fifth' => 29,
    'teenth' => 13,
    'last' => nil
  }

  def initialize(year, month)
    @year = year 
    @month = month 
    @days_in_month = Date.civil(@year, @month, -1).day
  end

  def day(weekday, schedule)
    weekday = weekday.downcase
    schedule = schedule.downcase 

    first_possible_day = first_day_to_search(schedule)
    last_possible_day = [first_possible_day + 6, @days_in_month].min 

    (first_possible_day..last_possible_day).detect do |day|
      date = Date.civil(@year, @month, day)
      break date if day_of_week_is?(date, weekday)
    end
  end

  private 

  def first_day_to_search(schedule)
    SCHEDULE_START_DAY[schedule] || (@days_in_month - 6)
  end

  def day_of_week_is?(date, weekday)
    case weekday 
    when 'monday'    then date.monday?
    when 'tuesday'   then date.tuesday?
    when 'wednesday' then date.wednesday?
    when 'thursday'  then date.thursday?
    when 'friday'    then date.friday?
    when 'saturday'  then date.saturday?
    when 'sunday'    then date.sunday? 
    end
  end

end