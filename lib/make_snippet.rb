require 'make_snippet'

RSpec.describe 'make snippet method' do
    context 'zero words' do
        it 'returns nothing string' do
            result = make_snippet("")
            expect(result).to eq ("")
        end
    end

    context 'takes 5 words' do
        it 'returns exact string' do
            result = make_snippet("Keep up the good work!!")
            expect(result).to eq ("Keep up the good work!!")
        end
    end

    context 'more than 5 words' do
        it 'returns only 5 words' do
            result = make_snippet("Keep up the good work!! How are you doing?")
            expect(result).to eq ("Keep up the good work!!")
        end
    end
end