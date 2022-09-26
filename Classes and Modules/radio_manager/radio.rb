# !/usr/local/bin/ruby
# frozen_string_literal: true

# Manages radio creation and actions
class Radio
  attr_reader :volume, :freq, :band

  FM_FREQUENCIES  = (88.0...108.0).freeze
  DEFAULT_FM_FREQ = 95.5
  AM_FREQUENCIES  = (540.0...1600.0).freeze
  DEFAULT_AM_FREQ = 1010.0
  VOLUME_VALUES   = (1...10).freeze
  DEFAULT_VOLUME  = 5

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
    return if value < VOLUME_VALUES.first || value > VOLUME_VALUES.last

    @volume = value
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

  private

  def default_freq
    @band == 'AM' ? DEFAULT_AM_FREQ : DEFAULT_FM_FREQ
  end

  def allowed_frequencies
    @band == 'AM' ? AM_FREQUENCIES : FM_FREQUENCIES
  end
end
