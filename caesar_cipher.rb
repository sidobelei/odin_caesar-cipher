def caesar_cipher (string, shift_factor)
    old_string = string.split("")
    if shift_factor > 26 
        shift_factor = shift_factor % 26
    end
    modified_string = old_string.map do |char|
        ascii_char = char.ord
        if (65..90).include?(ascii_char) || (97..122).include?(ascii_char)
            if (65..90).include?(ascii_char)
                if ascii_char + shift_factor > 90
                    new_shift = shift_factor - (90 - ascii_char)
                    ascii_char = 64 + new_shift
                else
                    ascii_char += shift_factor
                end
            else
                if ascii_char + shift_factor > 122
                    new_shift = shift_factor - (122 - ascii_char)
                    ascii_char = 96 + new_shift
                else
                    ascii_char += shift_factor
                end
            end
        end
        ascii_char.chr
    end
    puts modified_string.join
end 

#Uncomment below to see output and change parameters
#caesar_cipher("What a string!", 5)