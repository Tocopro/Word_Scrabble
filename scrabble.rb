# frozen_string_literal: true


# Print Title of the Program
puts('Scrabble Score using Hashes')
# initialize count with 0
count = 0
# user entry of the word they want to play
puts 'Enter a Word : '
letter = gets.chomp
letter = letter.upcase
# iterating each single element in hte word
letter.split('').each { |x|
  # collecting all the key values which are the points associated with the letter and totalling it up
  points_scrabble = { 1 => %w[A E I L N O R S T U], 2 => %w[D G], 3 => %w[B C M P],
                      4 => %w[F H V W Y], 5 => %w[K], 8 => %w[J X], 10 => %w[Q Z] }
  points_scrabble.each do |key, value|
    value.each do |i|
      (count += key) if i == x
    end
  end
}
# print the outcome of the total points from the word played
puts "Total points #{count}"

