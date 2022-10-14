# !/usr/local/bin/ruby
# frozen_string_literal: true

# Manages encode and decode actions
class ShiftCipher
  UPCASE   = [*'A'..'Z'].freeze
  DOWNCASE = [*'a'..'z'].freeze

  def self.encode(string, pos = 3)
    cicle_string(string, pos, 'encode')
  end

  def self.decode(string, pos = 3)
    cicle_string(string, pos, 'decode')
  end

  def self.cicle_string(string, pos, cipher)
    string.chars.map do |char|
      if DOWNCASE.include?(char)
        cipher_character(char, pos, DOWNCASE, cipher)
      elsif UPCASE.include?(char)
        cipher_character(char, pos, UPCASE, cipher)
      else
        char
      end
    end.join('')
  end

  def self.cipher_character(char, pos, list, cipher)
    i = list.find_index(char)

    new_pos = i + pos if cipher.eql? 'encode'
    new_pos = i - pos if cipher.eql? 'decode'

    list[new_pos % list.length]
  end
end
