# !/usr/local/bin/ruby
# frozen_string_literal: true

require_relative 'radio_manager/radio'

radio = Radio.fm

begin
  radio.volume = 15
rescue VolumeError => e
  puts "Volume #{e.message}"
end

begin
  radio.volume = -1
rescue VolumeError => e
  puts "Volume #{e.message}"
end

begin
  radio.volume = 10
rescue VolumeError => e
  puts "Volume #{e.message}"
end
