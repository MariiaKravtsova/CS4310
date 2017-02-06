def fibonacci(size)
  first = 0
  second = 1
  counter = 0
  sequence = [first, second, ]

  while (counter < size - 2)
    sum = first + second
    sequence << sum
    first = second
    second = sum
    counter += 1
  end
  puts sequence
end

puts fibonacci(100)
