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

rounds.each do |round|
  opponent, you = round.split(" ")
  if you == "X" # HAVE TO LOOSE
    if opponent == "A"
      score += 3
    elsif opponent == "B"
      score += 1
    elsif opponent == "C"
      score += 2
    end
  elsif you == "Y" # HAVE TO DRAW
    if opponent == "A"
      score += 1
    elsif opponent == "B"
      score += 2
    elsif opponent == "C"
      score += 3
    end
    score += 3
  elsif you == "Z" # HAVE TO WIN
    if opponent == "B"
      score += 3
    elsif opponent == "C"
      score += 1
    elsif opponent == "A"
      score += 2
    end
    score += 6
  end
end

puts score