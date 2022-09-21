# !/usr/local/bin/ruby
# frozen_string_literal: true

require 'date'

days = %w[Sunday Monday Tuesday Wednesday Thursday Friday Saturday]
months = %w[January February March April May June July August September October November December]

puts '----------------------'
puts '| Birthdate Analysis |'
puts '----------------------'

puts 'What year were you born?'
print '> '
year = gets.chomp

puts 'What month were you born?'
print '> '
month = gets.chomp
month = months.find_index(month.capitalize) + 1 if month.to_i.zero?

puts 'What day were you born?'
print '> '
date = gets.chomp

puts

birthdate = Date.new(year.to_i, month.to_i, date.to_i)

puts '-' * 40
puts "You were born in a #{days[birthdate.wday]}"
puts "It was the #{birthdate.cweek} week of the year"
puts "It was the #{birthdate.yday} day of the year"

if birthdate.leap?
  puts 'You were born in a leap year'
else
  puts 'You were not born in a leap year'
end
puts '-' * 40

def format_month(month)
  month.to_i ? months[month - 1] : month
end
