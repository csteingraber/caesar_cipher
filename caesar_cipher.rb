def caesar_cipher(text, shift)
	upper_case = 65..90
	lower_case = 97..122
	shift = shift % 26
	text.length.times do |index|
		character = text[index].ord
		if (upper_case === character) || (lower_case === character)
			shifted_character = character + shift
			case character
				when upper_case
				if shifted_character > 90
					shifted_character = (shifted_character - 91) + 65
				end
				else
				if shifted_character > 122
					shifted_character = (shifted_character - 123) + 97
				end
			end
			text[index] = shifted_character.chr	
		end
	end
	puts text
end

caesar_cipher("What a string!", 178)