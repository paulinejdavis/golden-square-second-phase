
require 'diary_entry.rb'

RSpec.describe DiaryEntry do
    it 'constructs' do
        entry = DiaryEntry.new("Day 1", "This is my day.")
        expect(entry.title).to eq "Day 1"
        expect(entry.contents).to eq "This is my day."
    end
    
    describe '#count_words' do
        it 'returns 0 when empty string given' do
        entry = DiaryEntry.new("Day 1", "")
        expect(entry.count_words).to eq 0
    end
    
        it 'returns number of words in a given string' do
             entry = DiaryEntry.new("Day 1", "This is my day.")
            expect(entry.count_words).to eq 4
        end
    end
    
    describe 'reading time method' do
        it 'returns 0' do
         entry = DiaryEntry.new("Day 1", "")
        expect(entry.reading_time(100)).to eq 0
        end
    
        it "fails" do
            entry = DiaryEntry.new("Day 1", "This is my day.")
            expect { entry.reading_time(0) }.to raise_error "Reading speed must be above zero."
        end
    
        it 'returns time to read 1 min' do
            entry = DiaryEntry.new("Day 1", "This is my day.")
            expect(entry.reading_time(100)).to eq 1
        end
    
        it 'returns time to read 1 min' do
            entry = DiaryEntry.new("Day 1", "This is my day.")
            expect(entry.reading_time(1)).to eq 4
         end
     end
    
    describe 'reading chunk method' do
         it 'returns empty string' do
             entry = DiaryEntry.new("Day 1", "")
            expect(entry.reading_chunk(100, 1)).to eq ""
        end
    
        it 'returns first chunk' do
         text = "one two three four five six seven eight nine ten"
         entry = DiaryEntry.new("Day 1", text)
         expect(entry.reading_chunk(3, 1)).to eq "one two three"
        end
    
        it 'returns second chunk' do
         text = "one two three four five six seven eight nine ten"
        entry = DiaryEntry.new("Day 1", text)
         entry.reading_chunk(3, 1)
        result = entry.reading_chunk(7, 1)
         expect(result).to eq "four five six seven eight nine ten"
        end
    
         it 'restarts chunk' do
        text = "one two three four five six seven eight nine ten"
        entry = DiaryEntry.new("Day 1", text)
        entry.reading_chunk(3, 1)
        entry.reading_chunk(8, 1)
        result = entry.reading_chunk(3, 1)
        expect(result).to eq "one two three"
        end
    end
end