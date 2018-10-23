require 'pry'

# A collection of spelling blocks has two letters per block, as shown in this list:
# Each block can only be used once

# Input: A string
# Output:
# - true if the word passed can be spelled from this set of blocks, false otherwise
# - a block can only be used once

# Example: 'BATCH' => true

def block_word?(string)
  blocks  = [['B','O'], ['X','K'], ['D','Q'], ['C', 'P'], ['N', 'A'],
            ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
            ['V', 'I'], ['L', 'Y'], ['Z', 'M']]
  letters = string.chars

  blocks.each do |block|
    if block.all? {|letter_block| string.include?(letter_block)}
      return false
    else
      next
    end
  end
  return true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
block_word?('jest') == true