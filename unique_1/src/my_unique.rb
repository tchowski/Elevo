#!/usr/bin/env ruby
# frozen_string_literal: true

require 'rspec'

# If you want to check the first and the last name comparaison
# uncomment elsif condition.

def my_compare(full_name, full_name_b)
  if full_name[0].casecmp(full_name_b[0]) == 0 &&
     full_name[1].casecmp(full_name_b[1]) == 0
    true
  # elsif full_name[0].casecmp(full_name_b[1]) == 0 &&
  #     full_name[1].casecmp(full_name_b[0]) == 0
  #     return true
  else
    false
  end
end

def my_uniq(array)
  index = 0
  duplicate = []

  while index < array.length && array[index + 1] != nil
    j = 1
    full_name = array[index].split(' ')
    while j < array.length && array[j + index] != nil
      full_name_b = array[j + index].split(' ')
      if my_compare(full_name, full_name_b)
        puts "#{array[index]} est égal à #{array[j + index]}"
        duplicate << array[index]
        duplicate << array[j + index]
      end
      j += 1
    end
    index += 1
  end
  print "\n"
  puts duplicate
end

full_name = [
  'Delphine Chartier',
  'Barbara Decaux',
  'Adrien Sardaban',
  'Delphine CHARTIER',
  'sardaban adrien',
  'Basile Dirac',
  'adrien sardaban'
]

my_uniq(full_name)
