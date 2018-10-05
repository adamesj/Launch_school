def shout_out_to(name)
  name = name.chars.each { |c| c.upcase! }.join
  # name wasn't assigned to a variable so any changes we're not reflected
  # on line 5
  puts 'HEY ' + name
end

shout_out_to('you') # Expected:'HEY YOU'
