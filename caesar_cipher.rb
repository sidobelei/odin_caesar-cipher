def caesar_cipher (string, shift_factor)
    old_string = verify_string(string)
    return unless old_string
    shift_factor = normalize_shift_factor(shift_factor)
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

def verify_string(string)
    string.split("") if string.is_a?(String)
end 

def normalize_shift_factor(shift_factor)
    if shift_factor > 26 
        shift_factor = shift_factor % 26
    end
    return shift_factor
end

#Uncomment below to see output and change parameters
#caesar_cipher("What a string!", 5)