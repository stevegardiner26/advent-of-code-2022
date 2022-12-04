# Part 1

input = File.read('inputs/day4.txt')
pairs = input.split(/\n/)
pairs.map!{|p| p.split(/,/)}
count = 0
pairs.each do |p|
  p.map!{|a| (a.split('-')[0].to_i..a.split('-')[1].to_i).to_a}
  count += 1 if (p[0] - p[1]).empty? || (p[1] - p[0]).empty?
end

puts count

# Part 2

input = File.read('inputs/day4.txt')
pairs = input.split(/\n/)
pairs.map!{|p| p.split(/,/)}
count = 0
pairs.each do |p|
  p.map!{|a| (a.split('-')[0].to_i..a.split('-')[1].to_i).to_a}
  count += 1 if p[0].length > (p[0] - p[1]).length || p[1].length > (p[1] - p[0]).length
end

puts count