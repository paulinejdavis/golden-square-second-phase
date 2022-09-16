require 'count_words'

RSpec.describe 'count words method' do
    context 'zero words' do
        it 'returns zero' do
            result = count_words("")
            expect(result).to eq (0)
        end
    end

    context 'one word' do
        it 'returns one' do
            result = count_words("Euphoria")
            expect(result).to eq (1)
        end
    end

    context 'more than one word' do
        it 'returns the number of words' do
            result = count_words("Hello Euphoria")
            expect(result).to eq (2)
        end
    end
end
