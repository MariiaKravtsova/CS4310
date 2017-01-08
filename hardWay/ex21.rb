def add(a, b)
    return a+b
end

def subtract(a, b)
    return a - b
end

add(30, 5)
subtract(30, 5)

fruit = add(25, subtract(6, 3))
puts fruit

# <<END is a heredoc
poem = <<END
\t Not a poem
roses are red
violets are blue
this is heredoc
and I hate you.
END

puts poem

def secret_formula(started)
    jelly_beans = started * 50
    jars = jelly_beans / 100
    crates = jars / 100
    return jelly_beans, jars, crates
end

five = 5
beans, jars, crates = secret_formula(five)
puts beans, jars, crates
