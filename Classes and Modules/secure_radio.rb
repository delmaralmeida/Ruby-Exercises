# !/usr/local/bin/ruby
# frozen_string_literal: true

require_relative 'radio_manager/secure_radio'

radio = SecureRadio.new
puts radio.status
radio.play
radio.play
radio.play
