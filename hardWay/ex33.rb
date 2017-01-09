
def counting(counting_from, counting_to)
    numbers = []

    while counting_from <= counting_to
        numbers.push(counting_from)
        counting_from += 1
    end

    numbers.each {|number| puts number}
end

counting(7, 21)
