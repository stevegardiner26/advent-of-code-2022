# Part 1
input = File.read('inputs/day10.txt').split(/\n/)

x = 1
cycle = 0
strength_sum = 0
input.each do |instruction|
  cycle += 1
  strength_sum += x * cycle if cycle % 40 == 20
  if instruction.match(/addx\s-?\d+/)
    cycle += 1
    strength_sum += x * cycle if cycle % 40 == 20
    x += instruction.match(/addx\s(-?\d+)/)[1].to_i
  end
end

puts strength_sum

# Part 2

input = File.read('inputs/day10.txt').split(/\n/)
x = 1
cycle = 0
crt = []
240.times{|i| crt << "."}
input.each do |instruction|
  crt[cycle] = "#" if cycle % 40 == x || cycle % 40 == x - 1 || cycle % 40 == x + 1
  cycle += 1
  if instruction.match(/addx\s-?\d+/)
    crt[cycle] = "#" if cycle % 40 == x || cycle % 40 == x - 1 || cycle % 40 == x + 1
    cycle += 1
    x += instruction.match(/addx\s(-?\d+)/)[1].to_i
  end
end

crt.each_slice(40).to_a.each{|r| print r.join(" ") + "\n"}