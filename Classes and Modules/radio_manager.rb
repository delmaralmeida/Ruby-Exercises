# !/usr/local/bin/ruby
# frozen_string_literal: true

require_relative 'radio_manager/radio'

# create FM radio with default values
radio = Radio.fm

puts '1. Creates FM radio with default values'
puts radio.status
puts

# change volume and frequency
radio.volume = 10
radio.freq = 90.0

puts '2. Changes volume and frequency values'
puts radio.status
puts

# changes will not be applyed since values
# are below/above the expected value
radio.volume = 15
radio.freq = 87.0

puts '3. Returns the default values, since the values applyed are not allowed.'
puts radio.status
puts

# crank_it_up should bipass the allowed value
radio.crank_it_up

puts '4. Should return a volume above the allowed.'
puts radio.status
