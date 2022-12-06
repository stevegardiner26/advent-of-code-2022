# Part 1
input = File.read('inputs/day6.txt')

diff_count = []
input.split('').each_with_index do |char, index|
  if diff_count.length == 4
    puts index
    break
  end
  diff_count = diff_count[(diff_count.index(char) + 1)..] if diff_count.include? char
  diff_count << char
end

# Part 2

input = File.read('inputs/day6.txt')

diff_count = []
input.split('').each_with_index do |char, index|
  if diff_count.length == 14
    puts index
    break
  end
  diff_count = diff_count[(diff_count.index(char) + 1)..] if diff_count.include? char
  diff_count << char
end
