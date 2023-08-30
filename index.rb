MORSE_CODE = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z','   ' => ' '
  }.freeze

def decode_char(str)
  MORSE_CODE[str]
end

puts decode_char(".-")

def decode_word(str)
  decode_str = []
	str.split(' ').each do |item|   
    decode_str.push(decode_char(item)) 
  end
    decode_str.join
end

puts decode_word("-- -.--")

def decode_massage (str)
  decode_str_massage = []
  str.split('   ').each do |word|
    decode_str_massage.push(decode_word(word))
  end
  decode_str_massage.join(' ')
end 

puts decode_massage("-- -.--   -. .- -- .")
puts decode_massage(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")