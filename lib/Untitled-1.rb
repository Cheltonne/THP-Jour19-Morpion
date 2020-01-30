letter = ['a', 'b', 'c']
number = ['1', '2', '3']
position = []
letter.each {|letter|
  number.each {|number|
position << letter + number} 
}

puts position