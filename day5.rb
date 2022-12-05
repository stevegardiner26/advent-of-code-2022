# Part 1
input = File.read('inputs/day5.txt')
storage, instructions = input.split(/\n\n/).map{|o| o.split(/\n/)}

crates = []
storage.pop
storage.each do |row|
  row.gsub!(/\s\s\s\s/, '[*]')
  parsed_row = row.scan(/\[([A-Z*])\]/).map{|i| i[0]}
  parsed_row.each_with_index do |item, idx|
    next if item == "*"
    if crates[idx].nil?
      crates[idx] = [item]
    else
      crates[idx].push item
    end
  end
end

instructions.each do |i|
  int_instructions = i.scan(/([0-9][0-9]*)/).map!{|r| r[0].to_i}
  int_instructions[0].times do |idx|
    crates[int_instructions[2] - 1].unshift crates[int_instructions[1] - 1].shift
  end
end

puts crates.map{|c| c[0]}.join('')

# Part 2

input = File.read('inputs/day5.txt')
storage, instructions = input.split(/\n\n/).map{|o| o.split(/\n/)}

crates = []
storage.pop
storage.each do |row|
  row.gsub!(/\s\s\s\s/, '[*]')
  parsed_row = row.scan(/\[([A-Z*])\]/).map{|i| i[0]}
  parsed_row.each_with_index do |item, idx|
    next if item == "*"
    if crates[idx].nil?
      crates[idx] = [item]
    else
      crates[idx].push item
    end
  end
end

instructions.each do |i|
  int_instructions = i.scan(/([0-9][0-9]*)/).map!{|r| r[0].to_i}
  crates[int_instructions[2] - 1].unshift *crates[int_instructions[1] - 1].shift(int_instructions[0])
end

puts crates.map{|c| c[0]}.join('')