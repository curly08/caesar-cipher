# frozen_string_literal: true

require './app'

describe '#caesar_cipher' do
  it 'returns lowercase string shifted 3 characters to the right' do
    expect(caesar_cipher('dog', 3)).to eql('grj')
  end

  xit 'returns string shifted 3 characters to the right, respecting capitalization' do
    expect(caesar_cipher('DoG', 3)).to eql('GrJ')
  end
end
