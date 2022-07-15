# !/usr/local/bin/ruby
# frozen_string_literal: true

# Manages dice actions and validations
class Dice
  attr_reader :value, :type

  DICE_TYPE = {
    'd4' => 4,
    'd6' => 6,
    'd8' => 8,
    'd10' => 10,
    'd12' => 12,
    'd20' => 20
  }.freeze

  def initialize(type)
    @type = type

    validate_type
  end

  def roll
    @value = generate_random_number
  end

  private

  def validate_type
    return unless DICE_TYPE[type].nil?

    raise ArgumentError, "Type '#{type}' not permitted"
  end

  def generate_random_number
    rand(DICE_TYPE[type]) + 1
  end
end
