def convert_to_numeral(digit)

    digits = {1 => 'I',4 => 'IV', 5 => 'V', 9 => 'IX', 10 => 'X', 50 => 'L', 100 => 'C',
                500 => 'D', 1000 => 'M'}

    numeral = ""

    digits.each do |number, letter|
        # something with the digit here ... How the hell do you increment so it works?!
        if digit % number == 0
            numeral.concat(letter)
        end
    end
    puts numeral
end

print "Enter a digit to convert: "
digit = gets.chomp.to_i
convert_to_numeral(digit)
