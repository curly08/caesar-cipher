# frozen_string_literal: true

require './app'

describe '#caesar_cipher' do
  it 'returns lowercase string shifted 3 characters to the right' do
    expect(caesar_cipher('dog', 3)).to eql('grj')
  end

  it 'returns string shifted 3 characters to the right, respecting capitalization' do
    expect(caesar_cipher('DoG', 3)).to eql('GrJ')
  end

  it 'returns string shifted 3 characters to the right, respecting spaces' do
    expect(caesar_cipher('hi there', 3)).to eql('kl wkhuh')
  end

  it 'returns string shifted 3 characters to the right, respecting punctuation' do
    expect(caesar_cipher('Hi! What is your name?', 3)).to eql('Kl! Zkdw lv brxu qdph?')
  end

  it 'returns string shifted 3 characters to the right, respecting numbers' do
    expect(caesar_cipher('I have 23 cats', 3)).to eql('L kdyh 23 fdwv')
  end

  it 'returns string shifted 3 characters to the right and wraps around the alphabet if necessary' do
    expect(caesar_cipher('zyZY', 3)).to eql('cbCB')
  end

  it 'returns string shifted 30 characters to the right and wraps around the alphabet if necessary' do
    expect(caesar_cipher('I have 23 CATS!!', 30)).to eql('M lezi 23 GEXW!!')
  end
end
