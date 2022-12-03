# frozen_string_literal: true

# Part 1
input = File.read('inputs/day2.txt')
rounds = input.split(/\n/)
score = 0
keys = {A: 1, B: 2, C: 3, X: 1, Y: 2, Z: 3}
rounds.each do |round|
  opponent, you = round.split(" ").map{|i| keys[i.to_sym]}
  score += 6 if (you == 1 && opponent == 3) || (you == 2 && opponent == 1) || (you == 3 && opponent == 2)
  score += 3 if opponent == you
  score += you
end
puts score

# Part 2
input = File.read('inputs/day2.txt')
rounds = input.split(/\n/)
score = 0
keys = {A: 1, B: 2, C: 3, X: 1, Y: 2, Z: 3}
strats = [[3, 1, 2], [1, 2, 3], [2, 3, 1]]
rounds.each do |round|
  opponent, you = round.split(" ").map{|i| keys[i.to_sym]}
  score += strats[you - 1][opponent-1]
  score += 6 if you == 3
  score += 3 if you == 2
end

puts score