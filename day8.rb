# TODO: Both Part 1 & Part 2

input = """30373
25512
65332
33549
35390
"""

forest = input.split(/\n/).map!{|i| i.split('').map(&:to_i) }

forest_height = forest.length
forest_width = forest[0].length
visible_count = 0
forest_height.times do |it|
  forest_width.times do |it2|
    forest[it][it2]
  end
end