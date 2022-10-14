# !/usr/local/bin/ruby
# frozen_string_literal: true

require_relative 'volume_error'

# Manages radio creation and actions
class Radio
  attr_reader :volume, :freq, :band

  FM_FREQUENCIES  = (88.0...108.0).freeze
  DEFAULT_FM_FREQ = 95.5
  AM_FREQUENCIES  = (540.0...1600.0).freeze
  DEFAULT_AM_FREQ = 1010.0
  VOLUME_VALUES   = (1...10).freeze
  DEFAULT_VOLUME  = 5
  AUDIO_SAMPLES   = [
    'Here Comes the Sun',
    "Like a Rollin' Stone",
    'I Heard It Through the Grapevine',
    'Stairway to Heaven',
    'a traffic report',
    'a news report'
  ].freeze

  def self.am
    Radio.new(band: 'AM')
  end

  def self.fm
    Radio.new(band: 'FM')
  end

  def initialize(options = {})
    self.volume = options[:value] || DEFAULT_VOLUME
    @band = options[:band] || 'FM'
    @freq = default_freq
  end

  def volume=(value)
    @volume = value

    validate_volume
  end

  def freq=(value)
    value = value.to_f
    value = default_freq unless allowed_frequencies.include?(value)
    @freq = value.to_f
  end

  def crank_it_up
    @volume = 15
  end

  def status
    "Station: #{freq} #{band}, volume: #{volume}"
  end

  def play
    puts "The radio plays: #{audio_stream}"
  end

  protected

  def default_freq
    @band == 'AM' ? DEFAULT_AM_FREQ : DEFAULT_FM_FREQ
  end

  def allowed_frequencies
    @band == 'AM' ? AM_FREQUENCIES : FM_FREQUENCIES
  end

  def validate_volume
    volume_too_low  = volume < VOLUME_VALUES.first
    volume_too_loud = volume > VOLUME_VALUES.last

    raise VolumeError.new(volume, "to low") if volume_too_low
    raise VolumeError.new(volume, "to loud") if volume_too_loud
  end

  def audio_stream
    AUDIO_SAMPLES.sample
  end
end
