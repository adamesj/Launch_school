def ask(question)
  while true
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        return true
      else
        return false
      end
      break
    else
      puts 'Please answer "yes" or "no".'
    end
  end
end

puts 'Hello, and thank you for participating!'

ask 'Do you like shrimp?'
ask 'Do you like squid?'
like_it = ask 'Do you like octopus?'
puts like_it