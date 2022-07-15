# !/usr/local/bin/ruby
# frozen_string_literal: true

require_relative 'dice'

# Manages dice sets actions
class DiceSet
  attr_reader :dice_array

  def initialize(dice_array)
    @dice_array = dice_array.map { |type| Dice.new(type) }
  end

  def roll
    dice_array.each(&:roll)
  end

  def display
    dice_array.map { |dice| "[#{dice.value}]" }.join(' - ')
  end
end
