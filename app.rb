require 'pry-byebug'
# binding.pry

def wrap(c, shift_factor)
  if (c + shift_factor) > 122
    c = ((c + shift_factor) - 122) + 96
  else
    c + shift_factor
  end
end

def shift(arr, shift_factor)
  arr.map do |c|
    if c.between?(97, 122)
      wrap(c, shift_factor).chr
    else
      c.chr
    end
  end
end

def caesar_cipher(string, shift_factor)
  p shift(string.downcase.unpack('U*'), shift_factor).join.capitalize
end

print "What message do you want to encode?\n"
string = gets.chomp
print "How many factors do you want to shift your message by?\n"
shift_factor = gets.chomp.to_i
caesar_cipher(string, shift_factor)