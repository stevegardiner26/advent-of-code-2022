# frozen_string_literal: true

# Part 1
input = File.read('inputs/day3.txt')

rucksacks = input.split(/\n/)
priorities = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]

sum = 0
rucksacks.each do |sack|
  split_point = sack.length / 2
  compartment_1 = sack[0..(split_point - 1)]
  compartment_2 = sack[split_point..]

  dupes = compartment_1.split('').select{|c1| compartment_2.include? c1}
  dupes.map!{|d| priorities.index(d) + 1}
  sum += dupes[0] unless dupes.empty?
end

puts sum

# Part 2
input = File.read('inputs/day3.txt')
priorities = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]

groups = input.split(/\n/).each_slice(3).to_a
sum = 0
groups.each do |group|
  dupes = group[0].split('').select{|r1| group[1].include? r1}.uniq.select{|dup| group[2].include? dup}
  dupes.map!{|d| priorities.index(d) + 1}
  sum += dupes[0] unless dupes.empty?
end

puts sum