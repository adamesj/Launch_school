=begin
  Read the text file in the #process method and pass the text to 
  the block provided in each call. 
  Everything you need to work on is either part of the 
  #process method or part of the blocks. You need no other additions or changes.

  The text you use does not have to produce the same numbers as the sample output 
  but should have the indicated format.
=end

class TextAnalyzer
  def process
    # your implementation
    file = File.open('sample_text.txt', 'r')
    yield(file.read)
    file.close 
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |text| puts "#{text.split("\n\n").count} paragraphs" }
analyzer.process { |text| puts "#{text.split("\n").count} lines" }
analyzer.process { |text| puts "#{text.split(' ').count} words" }