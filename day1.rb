# Part 1
puts File.read('day1_input.txt').split(/\n\n/).map!{|elf| elf.split(/\n/).map(&:to_i).sum}.max

# Part 2
puts File.read('day1_input.txt').split(/\n\n/).map!{|elf| elf.split(/\n/).map(&:to_i).sum}.max(3).sum