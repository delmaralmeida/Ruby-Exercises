# !/usr/local/bin/ruby
# frozen_string_literal: true

require_relative 'radio_manager/radio'

# volume
v_default = Radio::DEFAULT_VOLUME
v_max = Radio::VOLUME_VALUES.last
v_min = Radio::VOLUME_VALUES.first
# fm freq
fm_freq_default = Radio::DEFAULT_FM_FREQ
fm_freq_max = Radio::FM_FREQUENCIES.last
fm_freq_min = Radio::FM_FREQUENCIES.first
# am freq
am_freq_default = Radio::DEFAULT_AM_FREQ
am_freq_max = Radio::AM_FREQUENCIES.last
am_freq_min = Radio::AM_FREQUENCIES.first

# display default values
puts "Volume   -> Default: #{v_default}, Min: #{v_min}, Max: #{v_max}"
puts "FM Freq. -> Default: #{fm_freq_default}, Min: #{fm_freq_min}, Max: #{fm_freq_max}"
puts "AM Freq. -> Default: #{am_freq_default}, Min: #{am_freq_min}, Max: #{am_freq_max}"
puts

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
radio.volume = 5 # reset value
radio.volume = 15
radio.freq = 87.0

puts '3. Returns the default values, since the values applyed are not allowed.'
puts radio.status
puts

# crank_it_up should bipass the allowed value
radio.crank_it_up

puts '4. Should return a volume above the allowed.'
puts "Volume: #{radio.volume}"
