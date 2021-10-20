# frozen_string_literal: true

def shift(arr, shift_factor)
  arr.map do |value|
    if value.between?(97, 122) && (value + shift_factor) > 122
      (((value + shift_factor) - 122) + 96).chr
    elsif value.between?(65, 90) && (value + shift_factor) > 90
      (((value + shift_factor) - 122) + 96).chr
    else
      (value + shift_factor).chr
    end
  end
end

def caesar_cipher(string, shift_factor)
  result = shift(string.unpack('U*'), shift_factor).join
  # result.capitalize if string == string.capitalize
end

# print "What message do you want to encode?\n"
# string = gets.chomp
# print "How many factors do you want to shift your message by?\n"
# shift_factor = gets.chomp.to_i
# caesar_cipher(string, shift_factor)
