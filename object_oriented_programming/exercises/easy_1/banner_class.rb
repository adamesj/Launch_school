=begin
  Complete this class so that the test cases shown below work as intended.
  You can add any methods or instance variables but do not make the implementation details public.

  Test Case 1:

  banner = Banner.new('To boldly go where no one has gone before.')
  puts banner
  +--------------------------------------------+
  |                                            |
  | To boldly go where no one has gone before. |
  |                                            |
  +--------------------------------------------+

  Test Case 2:

  banner = Banner.new('')
  puts banner
  +--+
  |  |
  |  |
  |  |
  +--+

  We need to initialize a @message instance variable.
  Have to output +---+ for the horizontal rule.
  The first and last characters gave to be + and the rest has to be - symbols.
  The number of - markers are equal to the length of the message string + 2 spaces.
=end

class Banner
  def initialize(message, width)
    @message = message
    @width = width > @message.length ? width : @message.length
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    # start_marker = "+"
    # end_marker = "+"
    # markers = ""
    # (@width + 2).times { markers << "-" } # -2 to account for the empty spaces
    # start_marker + markers + end_marker
    "+-#{'-' * (@width)}-+"
  end

  def empty_line
    # marker = "|"
    # (@width + 2).times { marker << " " }
    # marker + "|"
    "| #{' ' * (@width)} |"
  end

  def message_line
    "| #{@message.center(@width)} |"
  end

  def message_line_length
    message_line.length
  end
end

banner = Banner.new('To boldly go where no one has gone before.', 0)
puts banner
