# The method should return a new string with the words of its argument in reverse order,
# without using any of Ruby's built-in reverse methods.

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = words.length - 1
  until i == 0
    reversed_words = reversed_words << words[i]
    # no implicit conversion of Array into String on line 10
    # its trying to add an element from words with an empty array
    i -= 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'
