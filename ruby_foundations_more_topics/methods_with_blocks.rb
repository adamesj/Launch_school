def echo_with_yield(str)
  yield
  puts str
end

echo_with_yield("hello") { puts "world" }
