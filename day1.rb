# Part 1
puts File.read('inputs/day1.txt').split(/\n\n/).map!{|elf| elf.split(/\n/).map(&:to_i).sum}.max

# Part 2
puts File.read('inputs/day1.txt').split(/\n\n/).map!{|elf| elf.split(/\n/).map(&:to_i).sum}.max(3).sum