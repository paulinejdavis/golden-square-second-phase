require 'grammar_stats.rb'

RSpec.describe GrammarStats do

    describe 'grammar check method' do
        it 'a big fail empty string' do
         words = GrammarStats.new
         expect { words.check("") }.to raise_error "Text is empty,try again"
        end   

        it 'true when text begins with a capital letter and ends with punctuation mark' do
            words = GrammarStats.new
            text = "This is difficult."
            expect(words.check(text)).to eq true
        end
        
        it 'false when text does not begin with a capital letter and ends with punctuation mark' do
            words = GrammarStats.new
            text = "this is still difficult"
            expect(words.check(text)).to eq false
        end

        it 'fail no check to complete' do
            words = GrammarStats.new
            expect { words.percentage_good }.to raise_error "No text to check"
        end
    end
end

