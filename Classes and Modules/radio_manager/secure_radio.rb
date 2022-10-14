# !/usr/local/bin/ruby
# frozen_string_literal: true

require_relative 'radio'
require_relative 'shift_cipher'

# Manages secure radio actions
class SecureRadio < Radio
  SHIFT = 3

  protected

  def audio_stream
    ShiftCipher.encode(super, SHIFT)
  end
end
