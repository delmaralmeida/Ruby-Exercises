# !/usr/local/bin/ruby
# frozen_string_literal: true

# Manages Volume errors
class VolumeError < StandardError
  attr_reader :volume
  
  def initialize(value, msg = nil)
    @volume = value
    super(msg)
  end
end
