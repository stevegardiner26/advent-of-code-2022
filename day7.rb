# frozen_string_literal: true

input = File.read('inputs/day7.txt')
input = """$ cd /
$ ls
dir a
14848514 b.txt
8504156 c.dat
dir d
$ cd a
$ ls
dir e
29116 f
2557 g
62596 h.lst
$ cd e
$ ls
584 i
$ cd ..
$ cd ..
$ cd d
$ ls
4060174 j
8033020 d.log
5626152 d.ext
7214296 k
"""

lines = input.split(/\n/)
# TODO: Both Parts
# TODO: maybe use a recursive function to go through dirs and total up the directories
total_dir = {}
working_dir = total_dir
prev_dirs = []
lines.each do |l|
  if l.match(/\$/)
    if l.match(/\$ cd \.\./)
      # TODO: working directory back 1
      working_dir = total_dir
      prev_dirs.each do |d|
        working_dir = working_dir[d]
      end
    elsif l.match(/\$ cd \w+/)
      dir_name = l.match(/\$ cd (\w+)/)[1]
      prev_dirs << dir_name
      working_dir = working_dir[dir_name]
    end
  elsif l.match(/dir\s\w+/)
    directory_name = l.match(/dir\s(\w+)/)[1]
    working_dir[directory_name] = {}
  else
    size = l.match(/(\d+)/)[1]
    name = l.match(/\d+\s(.+)/)[1]
    working_dir[name] = size if size.to_i < 10000
  end
end

print total_dir