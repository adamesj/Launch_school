require 'pry'

# Write a method that returns one UUID when called with no parameters.

# Ouput: string containing 32 characters, separated by 5 sections 8-4-4-4-12

def generate_uuid
  characters = []
  alphabet = ('a'..'z').each { |digit| characters << digit }
  numbers = (0..9).each { |digit| characters << digit.to_s }

  uuid = ''
  sections = [8, 4, 4, 4, 12]
  sections.each do |section|
    section.times do
      uuid << characters.sample
    end
    uuid += '-' unless section == 12
  end

  uuid
end

p generate_uuid