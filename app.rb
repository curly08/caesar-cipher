# frozen_string_literal: true

def caesar_cipher(string, shift_factor)
  unpacked_string = string.unpack('U*')
  unpacked_string.map! do |value|
    if value.between?(97, 122)
      (value + shift_factor) > 122 ? (((value + shift_factor) - 122) + 96).chr : (value + shift_factor).chr
    elsif value.between?(65, 90)
      (value + shift_factor) > 90 ? (((value + shift_factor) - 90) + 64).chr : (value + shift_factor).chr
    else
      value.chr
    end
  end
  unpacked_string.join
end
