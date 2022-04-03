# !/usr/local/bin/ruby
# frozen_string_literal: true

BLANKS   = %w[verb noun adjective noun].freeze
VOWELS   = %w[a e i o u].freeze

answers = BLANKS.map do |request|
  vowel = VOWELS.include? request[0] ? 'an' : 'a'

  puts "Give me #{vowel} #{request}: "
  gets.chomp
end

sentence = 'I decided to --- my --- with a --- ---'.dup

answers.each { |word| sentence['---'] = word }
puts sentence
