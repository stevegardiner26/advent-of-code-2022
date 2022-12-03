# frozen_string_literal: true
# TODO: Optimize for Efficiency and Cleanliness
# Part 1
input = File.read('inputs/day2.txt')
rounds = input.split(/\n/)
score = 0

rounds.each do |round|
  opponent, you = round.split(" ")
  if you == "X"
    if opponent == "A"
      score += 3
    elsif opponent == "C"
      score += 6
    end
    score += 1
  elsif you == "Y"
    if opponent == "A"
      score += 6
    elsif opponent == "B"
      score += 3
    end
    score += 2
  elsif you == "Z"
    if opponent == "B"
      score += 6
    elsif opponent == "C"
      score += 3
    end
    score += 3
  end
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