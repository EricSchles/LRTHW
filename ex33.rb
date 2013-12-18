

def append(length)
 i = 0
 numbers = []

 while i < length
  puts "At the top i is #{i}"
  numbers.push(i)

  i += 1
  puts "Numbers now: #{numbers}"
  puts "At the bottom i is #{i}"
 end


 puts "The numbers: "

 for num in numbers
  puts num
 end
end

input = ARGV
input = input.pop().to_i

append(input)
