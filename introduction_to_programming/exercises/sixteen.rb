a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

# Turn it into a new array that consists of strings containing one word.

# Look into using Array's map and flatten methods, as well as String's split method.

a.map! {|a| a.split(" ")}
a.flatten!

p a